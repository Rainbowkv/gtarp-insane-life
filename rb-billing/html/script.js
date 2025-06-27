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
    let firstCol = tab.includes('sent') ? inv.billedtoname : inv.billedbyname;

    let statusText = inv.status === 'paid' ? '已支付' : '待支付';
    let operateHtml = '';

    if (tab.includes('sent')) {
      if (inv.status === 'unpaid') {
        // operateHtml = `<button>联系</button> <button>撤销</button>`;
        operateHtml = `<button data-action="revoke" data-id="${inv.id}">撤销</button>`;
      } else {
        operateHtml = `<button data-action="delete" data-id="${inv.id}">删除</button>`;
      }
    } else {
      if (inv.status === 'unpaid') {
        operateHtml = `<button 
                     data-action="pay" 
                     data-id="${inv.id}" 
                     data-amount="${inv.amount}" 
                     data-reason="${inv.reason}">支付</button>`;
      } else {
        operateHtml = ``;
      }
    }

    tbody.insertAdjacentHTML('beforeend', `
      <tr>
        <td>${firstCol}</td>
        <td>${statusText}</td>
        <td>${operateHtml}</td>
        <td>${inv.amount}</td>
        <td>${formatTime(inv.created_at)}</td>
        <td>${inv.reason}</td>
      </tr>
    `);
  });
}

// 将 tab 切换绑定成独立函数，以便动态菜单插入后也能生效
function bindMenuEvents() {
  const menuItems = document.querySelectorAll('.menu-item');

  menuItems.forEach(item => {
    item.addEventListener('click', function () {
      const selectedTab = this.dataset.tab;

      // 设置激活状态
      menuItems.forEach(el => el.classList.remove('active'));
      this.classList.add('active');

      // 更新页面标题
      document.getElementById('page-title').textContent = this.textContent;

      // 更新按钮显示
      updateActionVisibility(selectedTab);

      // 清空表格头和内容
      document.getElementById('bill-table-body').innerHTML = '';
      document.getElementById('table-head').innerHTML = '';

      // 设置表头
      if (selectedTab.includes('sent')) {
        document.getElementById('table-head').innerHTML = `
          <th>接收者</th>
          <th>状态</th>
          <th>操作</th>
          <th>金额</th>
          <th>时间</th>
          <th>原因</th>
        `;
      } else {
        document.getElementById('table-head').innerHTML = `
          <th>发出者</th>
          <th>状态</th>
          <th>操作</th>
          <th>金额</th>
          <th>时间</th>
          <th>原因</th>
        `;
      }

      // 请求数据
      loadInvoices(selectedTab);
    });
  });
}

// 显示“创建账单”按钮，仅在 personal-sent tab 时
function updateActionVisibility(currentTab) {
  const actions = document.getElementById('invoice-actions');
  if (currentTab.endsWith('sent')) {
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
  const tab = document.querySelector('.menu-item.active').dataset.tab

  if (!target || !amount || !reason) {
    console.error('创建账单失败：' + (data.error || '未知错误'));
    return;
  }

  fetch(`https://${GetParentResourceName()}/createInvoice`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ target, amount, reason, tab }),
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

// 账单记录操作事件监听
document.getElementById('bill-table-body').addEventListener('click', function (e) {
  const button = e.target.closest('button');
  if (!button) return;

  const action = button.dataset.action;
  const invoiceId = button.dataset.id;

  if (action === 'pay' && invoiceId) {
    // 发送支付请求到后端
    fetch(`https://${GetParentResourceName()}/payInvoice`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: parseInt(invoiceId) })
    }).then(() => {
      // 可选刷新
      setTimeout(() => {
        const activeTab = document.querySelector('.menu-item.active')?.dataset.tab;
        if (activeTab) loadInvoices(activeTab);
      }, 300);
    });
  }

  if (action === 'revoke') {
    fetch(`https://${GetParentResourceName()}/revokeInvoice`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: parseInt(invoiceId) })
    }).then(() => {
      // 可选刷新
      setTimeout(() => {
        const activeTab = document.querySelector('.menu-item.active')?.dataset.tab;
        if (activeTab) loadInvoices(activeTab);
      }, 300);
    });
  }

  if (action === 'delete') {
    fetch(`https://${GetParentResourceName()}/deleteInvoice`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: parseInt(invoiceId) })
    }).then(() => {
      setTimeout(() => {
        const activeTab = document.querySelector('.menu-item.active')?.dataset.tab;
        if (activeTab) loadInvoices(activeTab);
      }, 300);
    });
  }

  // 其他操作扩展
});

function closeBillingUI() {
  const modal = document.getElementById('create-invoice-modal');
  const container = document.querySelector('.container');

  const isModalVisible = window.getComputedStyle(modal).display === 'flex';

  if (isModalVisible) {
    modal.style.display = 'none';
  } else {
    container.style.display = 'none';
    document.querySelectorAll('.dynamic-job-tab').forEach(el => el.remove());// 移除动态插入的 tab
    // 重置激活 tab（可选：只保留前两个静态 tab）
    const menuItems = document.querySelectorAll('.menu-item');
    menuItems.forEach((item, index) => {
      item.classList.remove('active');
      if (index === 1) item.classList.add('active'); // 默认激活“个人收到的账单”
    });
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

window.addEventListener('message', function (event) {
  const data = event.data;
  if (data.action === 'openBillingUI') {
    document.querySelector('.container').style.display = 'flex'; // 显示UI
    // 处理职业动态菜单插入
    if (Array.isArray(data.jobs)) {
      const menu = document.getElementById('sidebar-menu');
      data.jobs.forEach(job => {
        const sentLi = document.createElement('li');
        sentLi.className = 'menu-item dynamic-job-tab';
        sentLi.dataset.tab = `${job.name}-sent`;
        sentLi.textContent = `${job.label}发出的账单`;

        const receivedLi = document.createElement('li');
        receivedLi.className = 'menu-item dynamic-job-tab';
        receivedLi.dataset.tab = `${job.name}-received`;
        receivedLi.textContent = `${job.label}收到的账单`;

        menu.appendChild(sentLi);
        // menu.appendChild(receivedLi);  // 暂时组织不接受开单
      });
    }
    
    bindMenuEvents();  // 绑定 tab 切换事件（必须重新绑定）
    // 默认加载“个人发出的账单”
    const defaultTab = document.querySelector('.menu-item.active').dataset.tab || 'personal-sent';
    document.querySelector('.menu-item.active')?.click();  // 手动触发默认 tab 点击
    loadInvoices(defaultTab);
  }
});

function formatTime(millis) {
    const date = new Date(millis);
    const Y = date.getFullYear();
    const M = String(date.getMonth() + 1).padStart(2, '0');
    const D = String(date.getDate()).padStart(2, '0');
    const h = String(date.getHours()).padStart(2, '0');
    const m = String(date.getMinutes()).padStart(2, '0');
    const s = String(date.getSeconds()).padStart(2, '0');
    return `${Y}-${M}-${D} ${h}:${m}:${s}`;
}