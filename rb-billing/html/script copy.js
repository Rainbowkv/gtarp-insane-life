function loadInvoices(tab) {
  fetch(`https://${GetParentResourceName()}/requestInvoices`, {
    method: 'POST',
    headers: {'Content-Type': 'application/json'},
    body: JSON.stringify({ tab })
  })
  .then(res => res.json())
  .then(data => {
    renderTable(data, tab);
  });
}

function renderTable(invoices, tab) {
  const tbody = document.getElementById('bill-table-body');
  tbody.innerHTML = '';

  invoices.forEach(inv => {
    let firstCol = tab.includes('sent') ? inv.billedto : inv.billedby;

    let statusText = inv.status === 'paid' ? '已支付' : '待支付';
    let operateHtml = '';

    if (tab.includes('sent')) {
      if (inv.status === 'unpaid') {
        operateHtml = `<button>联系</button> <button>撤销</button>`;
      } else {
        operateHtml = `<button>删除</button>`;
      }
    } else {
      if (inv.status === 'unpaid') {
        operateHtml = `<button>支付</button>`;
      } else {
        operateHtml = ``;
      }
    }

    tbody.insertAdjacentHTML('beforeend', `
      <tr>
        <td>${firstCol}</td>
        <td>${statusText}</td>
        <td>${inv.amount}</td>
        <td>${inv.reason}</td>
        <td>${new Date(inv.created_at).toLocaleString()}</td>
        <td>${operateHtml}</td>
      </tr>
    `);
  });
}

const menuItems = document.querySelectorAll('.menu-item');

menuItems.forEach(item => {
  item.addEventListener('click', function () {
    const selectedTab = this.dataset.tab;

    // 设置激活状态
    menuItems.forEach(el => el.classList.remove('active'));
    this.classList.add('active');

    // 更新页面标题
    const pageTitle = document.getElementById('page-title');
    pageTitle.textContent = this.textContent;

    // 更新按钮显示
    updateActionVisibility(selectedTab);

    // 清空表格数据，准备重新渲染（可扩展为加载真实数据）
    document.getElementById('bill-table-body').innerHTML = '';
    document.getElementById('table-head').innerHTML = '';

    // 模拟不同表头（以后可以做成 config 或服务端发回）
    if (selectedTab.includes('sent')) {
      document.getElementById('table-head').innerHTML = `
        <th>接受者</th>
        <th>状态</th>
        <th>金额</th>
        <th>原因</th>
        <th>时间</th>
        <th>操作</th>
      `;
    } else {
      document.getElementById('table-head').innerHTML = `
        <th>创建者</th>
        <th>状态</th>
        <th>金额</th>
        <th>原因</th>
        <th>时间</th>
        <th>操作</th>
      `;
    }
    // 请求数据并渲染
    loadInvoices(selectedTab);
  });
});

// 显示“创建账单”按钮，仅在 personal-sent tab 时
function updateActionVisibility(currentTab) {
  const actions = document.getElementById('invoice-actions');
  if (currentTab === 'personal-sent') {
    actions.style.display = 'block';
  } else {
    actions.style.display = 'none';
  }
}

// 创建账单按钮事件
document.getElementById('create-invoice-btn').addEventListener('click', () => {
  document.getElementById('create-invoice-modal').style.display = 'flex';
});

// 提交账单
document.getElementById('submit-invoice').addEventListener('click', () => {
  const target = document.getElementById('input-target').value.trim();
  const amount = parseInt(document.getElementById('input-amount').value);
  const reason = document.getElementById('input-reason').value.trim();

  if (!target || !amount || !reason) {
    console.error('创建账单失败：' + (data.error || '未知错误'));
    return;
  }

  fetch(`https://${GetParentResourceName()}/createInvoice`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ target, amount, reason }),
  })
  .then(res => res.json())
  .then(data => {
    if (data.success) {
      // 关闭弹窗，清空输入
      document.getElementById('create-invoice-modal').style.display = 'none';
      document.getElementById('input-target').value = '';
      document.getElementById('input-amount').value = '';
      document.getElementById('input-reason').value = '';

      // 重新加载当前账单列表，触发 tab 重新请求
      const activeTab = document.querySelector('.menu-item.active').dataset.tab;
      loadInvoices(activeTab);
    } else {
      console.error('创建账单失败：' + (data.error || '未知错误'));
    }
  })
  .catch(err => {
    console.error(err);
  });
});

// 取消按钮关闭弹窗
document.getElementById('cancel-invoice').addEventListener('click', () => {
  document.getElementById('create-invoice-modal').style.display = 'none';
});

window.addEventListener('message', function (event) {
  const data = event.data;
  if (data.action === 'openBillingUI') {
    document.querySelector('.container').style.display = 'flex'; // 显示UI
    // 默认加载“个人发出的账单”
    const defaultTab = document.querySelector('.menu-item.active').dataset.tab;
    document.querySelector('.menu-item.active')?.click();  // 手动触发默认 tab 点击
    loadInvoices(defaultTab);
  }
});

function closeBillingUI() {
  const modal = document.getElementById('create-invoice-modal');
  const container = document.querySelector('.container');

  const isModalVisible = window.getComputedStyle(modal).display === 'flex';

  if (isModalVisible) {
    modal.style.display = 'none';
  } else {
    container.style.display = 'none';
    fetch(`https://${GetParentResourceName()}/closeBillingUI`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({})
    });
  }
}

// 例如 ESC 关闭
document.addEventListener('keydown', function (e) {
  if (e.key === 'Escape') {
    closeBillingUI();
  }
});