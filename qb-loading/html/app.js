const { ref } = Vue

// Customize language for dialog menus and carousels here

const load = Vue.createApp({
  setup () {
    return {
    //   CarouselText1: 'You can add/remove items, vehicles, jobs & gangs through the shared folder.',
    //   CarouselSubText1: 'Photo captured by: Markyoo#8068',
    //   CarouselText2: 'Adding additional player data can be achieved by modifying the qb-core player.lua file.',
    //   CarouselSubText2: 'Photo captured by: ihyajb#9723',
    //   CarouselText3: 'All server-specific adjustments can be made in the config.lua files throughout the build.',
    //   CarouselSubText3: 'Photo captured by: FLAPZ[INACTIV]#9925',
    //   CarouselText4: 'For additional support please join our community at discord.gg/qbcore',
    //   CarouselSubText4: 'Photo captured by: Robinerino#1312',

    //   DownloadTitle: 'Downloading QBCore Server',
    //   DownloadDesc: "Hold tight while we begin downloading all the resources/assets required to play on QBCore Server. \n\nAfter download has been finished successfully, you'll be placed into the server and this screen will disappear. Please don't leave or turn off your PC. ",

    //   SettingsTitle: 'Settings',
    //   AudioTrackDesc1: 'When disabled the current audio-track playing will be stopped.',
    //   AutoPlayDesc2: 'When disabled carousel images will stop cycling and remain on the last shown.',
    //   PlayVideoDesc3: 'When disabled video will stop playing and remain paused.',
      CarouselText1: '服务器扮演规则见Q群或kook社区文档，请严格遵守服务器秩序，管理团队将24小时监督',
      CarouselSubText1: '背景图来源于玩家: Markyoo#8068',
      CarouselText2: 'Ravens kook社区邀请码：https://kook.vip/N72G32',
      CarouselSubText2: '背景图来源于玩家: ihyajb#9723',
      CarouselText3: 'Ravens qq群1:972144535',
      CarouselSubText3: '背景图来源于玩家: FLAPZ[INACTIV]#9925',
      CarouselText4: '游玩过程遇到的问题可直接找管理员',
      CarouselSubText4: '背景图来源于玩家: Robinerino#1312',

      DownloadTitle: '加载Ravens游玩资源',
      DownloadDesc: "请稍候片刻，正在加载在Ravens国家游玩所需的所有资源。\n\n请不要离开或关闭电脑。",

      SettingsTitle: 'Settings',
      AudioTrackDesc1: 'When disabled the current audio-track playing will be stopped.',
      AutoPlayDesc2: 'When disabled carousel images will stop cycling and remain on the last shown.',
      PlayVideoDesc3: 'When disabled video will stop playing and remain paused.',

      KeybindTitle: '默认键位',//Default Keybinds
      Keybind1: '打开背包',//Open Inventory
      Keybind2: '',//Cycle Proximity
      Keybind3: '打开手机',//Open Phone
      Keybind4: '系/解安全带',//Toggle Seat Belt
      Keybind5: '打开目标交互菜单',//Open Target Menu
      Keybind6: '打开圆盘菜单',//Radial Menu
      Keybind7: '打开HUD设置菜单（已弃用）',//Open Hud Menu
      Keybind8: '无线电按键',//Talk Over Radio
      Keybind9: '打开得分板',//Open Scoreboard
      Keybind10: '载具解/上锁',//Vehicle Locks
      Keybind11: '载具开/关引擎',//Toggle Engine
      Keybind12: '手指',//Pointer Emote
      Keybind13: '键位槽',//Keybind Slots
      Keybind14: '举手',//Hands Up Emote
      Keybind15: '使用物品',//Use Item Slots
      Keybind16: '载具定速巡航',//Cruise Control

      firstap: ref(true),
      secondap: ref(true),
      thirdap: ref(true),
      firstslide: ref(1),
      secondslide: ref('1'),
      thirdslide: ref('5'),
      audioplay: ref(true),
      playvideo: ref(true),
      download: ref(true),
      settings: ref(false),
    }
  }
})

load.use(Quasar, { config: {} })
load.mount('#loading-main')

var audio = document.getElementById("audio");
audio.volume = 0.05;

function audiotoggle() {
    var audio = document.getElementById("audio");
    if (audio.paused) {
        audio.play();
    } else {
        audio.pause();
    }
}

function videotoggle() {
    var video = document.getElementById("video");
    if (video.paused) {
        video.play();
    } else {
        video.pause();
    }
}

let count = 0;
let thisCount = 0;

const handlers = {
    startInitFunctionOrder(data) {
        count = data.count;
    },

    initFunctionInvoking(data) {
        document.querySelector(".thingy").style.left = "0%";
        document.querySelector(".thingy").style.width = (data.idx / count) * 100 + "%";
    },

    startDataFileEntries(data) {
        count = data.count;
    },

    performMapLoadFunction(data) {
        ++thisCount;

        document.querySelector(".thingy").style.left = "0%";
        document.querySelector(".thingy").style.width = (thisCount / count) * 100 + "%";
    },
};

window.addEventListener("message", function (e) {
    (handlers[e.data.eventName] || function () {})(e.data);
});
