local Translations = {
    store = {
        barber = "理发店",
        surgeon = "整形外科",
        clothing = "服装店",
        outfitchanger = "换装"
    },

    outfits = {
        roomOutfits = "预设",
        myOutfits = "我的服装",
        character = "服饰",
        accessoires = "配饰"
    },

    menu = {
        hair = "发型",
        character = "服饰",
        accessoires = "配饰",
        features = "特征"
    },

    ui = {
        select = "选择",
        delete = "删除",
        select_outfit = "选择服装",
        player_model = "玩家模型",
        model = "模型",
        mother = "母亲",
        father = "父亲",
        texture = "纹理",
        type = "类型",
        item = "物品",
        skin_color = "肤色",
        parent_mixer = "父母混合",
        shape_mix = "形状混合",
        skin_mix = "肤色混合",
        arms = "手臂",
        undershirt = "内衣/腰带",
        color = "颜色",
        jacket = "夹克/上衣",
        vests = "背心",
        decals = "贴纸",
        acessory = "颈部配饰",
        bags = "包",
        pants = "裤子",
        shoes = "鞋子",
        eye_color = "眼睛颜色",
        moles = "痣/雀斑",
        opacity = "透明度",
        nose_width = "鼻子宽度",
        width = "宽度",
        nose_peak_height = "鼻梁高度",
        height = "高度",
        nose_peak_length = "鼻梁长度",
        length = "长度",
        nose_bone_height = "鼻骨高度",
        nose_peak_lowering = "鼻梁下垂",
        lowering = "下垂",
        nose_bone_twist = "鼻骨扭曲",
        twist = "扭曲",
        eyebrow_height = "眉毛高度",
        eyebrow_depth = "眉毛深度",
        depth = "深度",
        cheeks_height = "颊部高度",
        cheeks_width = "颊部宽度",
        cheeks_depth = "颊部深度",
        eyes_opening = "眼睛开合",
        opening = "开合",
        lips_thickness = "嘴唇厚度",
        thickness = "厚度",
        jaw_bone_width = "下颚骨宽度",
        jaw_bone_length = "下颚骨长度",
        chin_height = "下巴高度",
        chin_width = "下巴宽度",
        butt_chin  = "下巴部位",
        size = "大小",
        neck_thickness = "脖部厚度",
        ageing = "年龄",
        hair = "头发",
        eyebrow = "眉毛",
        facial_hair = "面部毛发",
        lipstick = "口红",
        blush = "腮红",
        makeup = "化妆",
        mask = "面具",
        hat = "帽子",
        glasses = "眼镜",
        ear_accessories = "耳部配饰",
        watch = "手表",
        bracelet = "手链",
        btn_confirm = "确认",
        btn_cancel = "取消",
        btn_saveOutfit = "保存服装",
        outfit_name = "服装名称"
    },

    notify = {
        error_bracelet = "你不能移除脚链 ...",
        info_deleteOutfit = "你已经删除了 %{outfit} 服装！"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
