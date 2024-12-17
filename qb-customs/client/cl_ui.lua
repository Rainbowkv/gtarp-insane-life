-----------------------
----   Variables   ----
-----------------------
local currentMenuItemID = 0
local currentMenuItem = ""
local currentMenuItem2 = ""
local currentMenu = "mainMenu"
local currentCategory = 0
local currentResprayCategory = 0
local currentResprayType = 0
local currentWheelCategory = 0
local currentNeonSide = 0

-----------------------
----   Functions   ----
-----------------------

local function toggleMenuContainer(state)
    SendNUIMessage({
        toggleMenuContainer = true,
        state = state
    })
end

local function createMenu(menu, heading, subheading)
    SendNUIMessage({
        createMenu = true,
        menu = menu,
        heading = heading,
        subheading = subheading
    })
end

local function destroyMenus()
    SendNUIMessage({
        destroyMenus = true
    })
end

local function populateMenu(menu, id, item, item2)
    SendNUIMessage({
        populateMenu = true,
        menu = menu,
        id = id,
        item = item,
        item2 = item2
    })
end

local function finishPopulatingMenu(menu)
    SendNUIMessage({
        finishPopulatingMenu = true,
        menu = menu
    })
end

local function updateMenuHeading(menu)
    SendNUIMessage({
        updateMenuHeading = true,
        menu = menu
    })
end

local function updateMenuSubheading(menu)
    SendNUIMessage({
        updateMenuSubheading = true,
        menu = menu
    })
end

local function updateMenuStatus(text)
    SendNUIMessage({
        updateMenuStatus = true,
        statusText = text
    })
end

local function toggleMenu(state, menu)
    SendNUIMessage({
        toggleMenu = true,
        state = state,
        menu = menu
    })
end

local function updateItem2Text(menu, id, text)
    SendNUIMessage({
        updateItem2Text = true,
        menu = menu,
        id = id,
        item2 = text
    })
end

local function updateItem2TextOnly(menu, id, text)
    SendNUIMessage({
        updateItem2TextOnly = true,
        menu = menu,
        id = id,
        item2 = text
    })
end

local function scrollMenuFunctionality(direction, menu)
    SendNUIMessage({
        scrollMenuFunctionality = true,
        direction = direction,
        menu = menu
    })
end

local function playSoundEffect(soundEffect, volume)
    SendNUIMessage({
        playSoundEffect = true,
        soundEffect = soundEffect,
        volume = volume
    })
end

local function isMenuActive(menu)
    local menuActive = false

    if menu == "modMenu" then
        for _, v in pairs(vehicleCustomisation) do
            if (v.category:gsub("%s+", "") .. "Menu") == currentMenu then
                menuActive = true

                break
            else
                menuActive = false
            end
        end
    elseif menu == "重新喷漆Menu" then
        for _, v in pairs(vehicleResprayOptions) do
            if (v.category:gsub("%s+", "") .. "Menu") == currentMenu then
                menuActive = true

                break
            else
                menuActive = false
            end
        end
    elseif menu == "车轮Menu" then
        for _, v in pairs(vehicleWheelOptions) do
            if (v.category:gsub("%s+", "") .. "Menu") == currentMenu then
                menuActive = true

                break
            else
                menuActive = false
            end
        end
    elseif menu == "NeonsSideMenu" then
        for _, v in pairs(vehicleNeonOptions.neonTypes) do
            if (v.name:gsub("%s+", "") .. "Menu") == currentMenu then
                menuActive = true

                break
            else
                menuActive = false
            end
        end
    end

    return menuActive
end

local function updateCurrentMenuItemID(id, item, item2)
    currentMenuItemID = id
    currentMenuItem = item
    currentMenuItem2 = item2

    if isMenuActive("modMenu") then
        if currentCategory ~= 18 then
            PreviewMod(currentCategory, currentMenuItemID)
        end
    elseif isMenuActive("重新喷漆Menu") then
        PreviewColour(currentResprayCategory, currentResprayType, currentMenuItemID)
    elseif isMenuActive("车轮Menu") then
        if currentWheelCategory ~= -1 and currentWheelCategory ~= 20 then
            PreviewWheel(currentCategory, currentMenuItemID, currentWheelCategory)
        end
    elseif isMenuActive("NeonsSideMenu") then
        PreviewNeon(currentNeonSide, currentMenuItemID)
    elseif currentMenu == "车窗Menu" then
        PreviewWindowTint(currentMenuItemID)
    elseif currentMenu == "NeonColoursMenu" then
        local r = vehicleNeonOptions.neonColours[currentMenuItemID].r
        local g = vehicleNeonOptions.neonColours[currentMenuItemID].g
        local b = vehicleNeonOptions.neonColours[currentMenuItemID].b

        PreviewNeonColour(r, g, b)
    elseif currentMenu == "XenonColoursMenu" then
        PreviewXenonColour(currentMenuItemID)
    elseif currentMenu == "经典涂装Menu" then
        PreviewOldLivery(currentMenuItemID)
    elseif currentMenu == "车牌样式Menu" then
        PreviewPlateIndex(currentMenuItemID)
    end
end

function InitiateMenus(isMotorcycle, vehicleHealth, categories, welcomeLabel)
    local plyPed = PlayerPedId()
    local plyVeh = GetVehiclePedIsIn(plyPed, false)
    --#[Repair Menu]#--
    if vehicleHealth < 1000.0 and categories.repair then
        local repairCost = math.ceil(1000 - vehicleHealth)

        TriggerServerEvent("qb-customs:server:updateRepairCost", repairCost)
        createMenu("repairMenu", welcomeLabel, "修理载具")
        populateMenu("repairMenu", -1, "修理", "$" .. repairCost)
        finishPopulatingMenu("repairMenu")
    end

    --#[Main Menu]#--
    createMenu("mainMenu", welcomeLabel, "选择改装项")

    for _, v in ipairs(vehicleCustomisation) do
        local _, amountValidMods = CheckValidMods(v.category, v.id)
        if amountValidMods > 0 or v.id == 18 then
            if (v.id == 11 or v.id == 12 or v.id == 13 or v.id == 15) then
                if categories.mods and maxVehiclePerformanceUpgrades ~= -1 then
                    populateMenu("mainMenu", v.id, v.category, "none")
                end
            elseif v.id == 16 then
                if categories.armor then
                    populateMenu("mainMenu", v.id, v.category, "none")
                end
            elseif v.id == 14 then
                if categories.horn then
                    populateMenu("mainMenu", v.id, v.category, "none")
                end
            elseif v.id == 18 then
                if categories.turbo then
                    populateMenu("mainMenu", v.id, v.category, "none")
                end
            elseif v.id == 48 then
                if categories.liveries then
                    populateMenu("mainMenu", v.id, v.category, "none")
                end
            else
                if categories.cosmetics then
                    populateMenu("mainMenu", v.id, v.category, "none")
                end
            end
        end
    end

    if categories.respray then populateMenu("mainMenu", -1, "重新喷漆", "none") end

    if not isMotorcycle then
        if categories.tint then populateMenu("mainMenu", -2, "车窗", "none") end
        -- if categories.neons then populateMenu("mainMenu", -3, "Neons", "none") end  -- 碰颜色会卡死
    end

    -- if categories.xenons then populateMenu("mainMenu", 22, "Xenons", "none") end  -- 碰颜色会卡死
    if categories.wheels then populateMenu("mainMenu", 23, "车轮", "none") end

    local livCount = GetVehicleLiveryCount(plyVeh)
    if livCount > 0 and categories.liveries then
        populateMenu("mainMenu", 24, "经典涂装", "none")
    end

    if categories.plate then populateMenu("mainMenu", 25, "车牌样式", "none") end
    if categories.extras then populateMenu("mainMenu", 26, "额外功能", "none") end

    finishPopulatingMenu("mainMenu")

    --#[Mods Menu]#--
    for _, v in ipairs(vehicleCustomisation) do
        local validMods, amountValidMods = CheckValidMods(v.category, v.id)
        local currentMod, _ = GetCurrentMod(v.id)

        if amountValidMods > 0 or v.id == 18 then
            if v.id == 11 or v.id == 12 or v.id == 13 or v.id == 15 or v.id == 16 then --Performance Upgrades
                local tempNum = 0

                createMenu(v.category:gsub("%s+", "") .. "Menu", v.category, "选择一项升级")

                for _, n in pairs(validMods) do
                    tempNum = tempNum + 1

                    if maxVehiclePerformanceUpgrades == 0 then
                        populateMenu(v.category:gsub("%s+", "") .. "Menu", n.id, n.name, "$" .. vehicleCustomisationPrices.performance.prices[tempNum])

                        if currentMod == n.id then
                            updateItem2Text(v.category:gsub("%s+", "") .. "Menu", n.id, "已安装")
                        end
                    else
                        if tempNum <= (maxVehiclePerformanceUpgrades + 1) then
                            populateMenu(v.category:gsub("%s+", "") .. "Menu", n.id, n.name, "$" .. vehicleCustomisationPrices.performance.prices[tempNum])

                            if currentMod == n.id then
                                updateItem2Text(v.category:gsub("%s+", "") .. "Menu", n.id, "已安装")
                            end
                        end
                    end
                end

                finishPopulatingMenu(v.category:gsub("%s+", "") .. "Menu")
            elseif v.id == 18 then
                local currentTurboState = GetCurrentTurboState()
                createMenu(v.category:gsub("%s+", "") .. "Menu", v.category .. " 定制", "搭载/卸载涡轮引擎")

                populateMenu(v.category:gsub("%s+", "") .. "Menu", -1, "Disable", "$0")
                populateMenu(v.category:gsub("%s+", "") .. "Menu", 0, "Enable", "$" .. vehicleCustomisationPrices.turbo.prices[2])

                updateItem2Text(v.category:gsub("%s+", "") .. "Menu", currentTurboState, "已安装")

                finishPopulatingMenu(v.category:gsub("%s+", "") .. "Menu")
            else
                createMenu(v.category:gsub("%s+", "") .. "Menu", v.category .. " 定制", "选择模型")

                for _, n in pairs(validMods) do
                    populateMenu(v.category:gsub("%s+", "") .. "Menu", n.id, n.name, "$" .. vehicleCustomisationPrices.cosmetics.price)

                    if currentMod == n.id then
                        updateItem2Text(v.category:gsub("%s+", "") .. "Menu", n.id, "已安装")
                    end
                end

                finishPopulatingMenu(v.category:gsub("%s+", "") .. "Menu")
            end
        end
    end

    --#[Respray Menu]#--
    createMenu("重新喷漆Menu", "重新喷漆", "更换漆面")

    populateMenu("重新喷漆Menu", 0, "主色调", "none")
    populateMenu("重新喷漆Menu", 1, "副色调", "none")
    populateMenu("重新喷漆Menu", 2, "珠光色", "none")
    populateMenu("重新喷漆Menu", 3, "车轮颜色", "none")
    populateMenu("重新喷漆Menu", 4, "内饰颜色", "none")
    populateMenu("重新喷漆Menu", 5, "仪表盘颜色", "none")

    finishPopulatingMenu("重新喷漆Menu")

    --#[Respray Types]#--
    createMenu("ResprayTypeMenu", "喷漆类型", "选择漆面类型")

    for _, v in ipairs(vehicleResprayOptions) do
        populateMenu("ResprayTypeMenu", v.id, v.category, "none")
    end

    finishPopulatingMenu("ResprayTypeMenu")

    --#[Respray Colours]#--
    for _, v in ipairs(vehicleResprayOptions) do
        createMenu(v.category .. "Menu", v.category .. " 颜色", "选择颜色")

        for _, n in ipairs(v.colours) do
            populateMenu(v.category .. "Menu", n.id, n.name, "$" .. vehicleCustomisationPrices.respray.price)
        end

        finishPopulatingMenu(v.category .. "Menu")
    end

    --#[Wheel Categories Menu]#--
    createMenu("车轮Menu", "车轮类型", "选择类型")

    for _, v in ipairs(vehicleWheelOptions) do
        if isMotorcycle then
            if v.id == -1 or v.id == 20 or v.id == 6 then --Motorcycle Wheels
                populateMenu("车轮Menu", v.id, v.category, "none")
            end
        else
            populateMenu("车轮Menu", v.id, v.category, "none")
        end
    end

    finishPopulatingMenu("车轮Menu")

    --#[Wheels Menu]#--
    for _, v in ipairs(vehicleWheelOptions) do
        if v.id == -1 then
            local currentCustomWheelState = GetCurrentCustomWheelState()
            createMenu(v.category:gsub("%s+", "") .. "Menu", v.category, "搭载/卸载车轮类型")

            populateMenu(v.category:gsub("%s+", "") .. "Menu", 0, "卸载", "$0")
            populateMenu(v.category:gsub("%s+", "") .. "Menu", 1, "搭载", "$" .. vehicleCustomisationPrices.customwheels.price)

            updateItem2Text(v.category:gsub("%s+", "") .. "Menu", currentCustomWheelState, "已安装")

            finishPopulatingMenu(v.category:gsub("%s+", "") .. "Menu")
        elseif v.id ~= 20 then
            if isMotorcycle then
                if v.id == 6 then --Motorcycle Wheels
                    local validMods, _ = CheckValidMods(v.category, v.wheelID, v.id)

                    createMenu(v.category .. "Menu", v.category .. " 车轮", "选择车轮")

                    for _, n in pairs(validMods) do
                        populateMenu(v.category .. "Menu", n.id, n.name, "$" .. vehicleCustomisationPrices.wheels.price)
                    end

                    finishPopulatingMenu(v.category .. "Menu")
                end
            else
                local validMods, _ = CheckValidMods(v.category, v.wheelID, v.id)

                createMenu(v.category .. "Menu", v.category .. " 车轮", "选择车轮")

                for _, n in pairs(validMods) do
                    populateMenu(v.category .. "Menu", n.id, n.name, "$" .. vehicleCustomisationPrices.wheels.price)
                end

                finishPopulatingMenu(v.category .. "Menu")
            end
        end
    end

    --#[Wheel Smoke Menu]#--
    local currentWheelSmokeR, currentWheelSmokeG, currentWheelSmokeB = GetCurrentVehicleWheelSmokeColour()
    createMenu("TyreSmokeMenu", "胎雾定制", "选择颜色")

    for k, v in ipairs(vehicleTyreSmokeOptions) do
        populateMenu("TyreSmokeMenu", k, v.name, "$" .. vehicleCustomisationPrices.wheelsmoke.price)

        if v.r == currentWheelSmokeR and v.g == currentWheelSmokeG and v.b == currentWheelSmokeB then
            updateItem2Text("TyreSmokeMenu", k, "已安装")
        end
    end

    finishPopulatingMenu("TyreSmokeMenu")

    --#[Window Tint Menu]#--
    local currentWindowTint = GetCurrentWindowTint()
    createMenu("车窗Menu", "车窗定制", "选择车窗")

    for _, v in ipairs(vehicleWindowTintOptions) do
        populateMenu("车窗Menu", v.id, v.name, "$" .. vehicleCustomisationPrices.windowtint.price)

        if currentWindowTint == v.id then
            updateItem2Text("车窗Menu", v.id, "已安装")
        end
    end

    finishPopulatingMenu("车窗Menu")

    --#[Old Livery Menu]#--
    if livCount > 0 then
        local tempOldLivery = GetVehicleLivery(plyVeh)
        createMenu("经典涂装Menu", "经典涂装定制", "选择涂装")
        for i=0, livCount-1 do
            populateMenu("经典涂装Menu", i, "涂装", "$100")
            if tempOldLivery == i then
                updateItem2Text("经典涂装Menu", i, "已安装")
            end
        end
        finishPopulatingMenu("经典涂装Menu")
    end

    --#[Plate Colour Index Menu]#--

    local tempPlateIndex = GetVehicleNumberPlateTextIndex(plyVeh)
    createMenu("车牌样式Menu", "车牌样式", "选择风格")
    local plateTypes = {
        "Blue on White #1",
        "Yellow on Black",
        "Yellow on Blue",
        "Blue on White #2",
        "Blue on White #3",
        "North Yankton",
    }
    for i=0, #plateTypes-1 do
        if i ~= 4 or (i == 4 and GetVehicleClass(plyVeh) == 18) or Config.allowGovPlateIndex then
            populateMenu("车牌样式Menu", i, plateTypes[i+1], "$"..vehicleCustomisationPrices.plateindex.price)
            if tempPlateIndex == i then
                updateItem2Text("车牌样式Menu", i, "已安装")
            end
        end
    end
    finishPopulatingMenu("车牌样式Menu")

    --#[Vehicle Extras Menu]#--
    createMenu("额外功能Menu", "载具额外功能定制", "切换额外功能")
    for i=1, 12 do
        if DoesExtraExist(plyVeh, i) then
            populateMenu("额外功能Menu", i, "额外功能 "..tostring(i), "Toggle")
        else
            populateMenu("额外功能Menu", i, "无可用", "none")
        end
    end
    finishPopulatingMenu("额外功能Menu")

    --#[Neons Menu]#--
    createMenu("NeonsMenu", "霓虹灯定制", "选择颜色")

    for _, v in ipairs(vehicleNeonOptions.neonTypes) do
        populateMenu("NeonsMenu", v.id, v.name, "none")
    end

    populateMenu("NeonsMenu", -1, "霓虹灯颜色", "none")
    finishPopulatingMenu("NeonsMenu")

    --#[Neon State Menu]#--
    for _, v in ipairs(vehicleNeonOptions.neonTypes) do
        local currentNeonState = GetCurrentNeonState(v.id)
        createMenu(v.name:gsub("%s+", "") .. "Menu", "霓虹灯定制", "开启/关闭霓虹灯")

        populateMenu(v.name:gsub("%s+", "") .. "Menu", 0, "关闭", "$0")
        populateMenu(v.name:gsub("%s+", "") .. "Menu", 1, "开启", "$" .. vehicleCustomisationPrices.neonside.price)

        updateItem2Text(v.name:gsub("%s+", "") .. "Menu", currentNeonState, "已安装")

        finishPopulatingMenu(v.name:gsub("%s+", "") .. "Menu")
    end

    --#[Neon Colours Menu]#--
    local currentNeonR, currentNeonG, currentNeonB = GetCurrentNeonColour()
    createMenu("NeonColoursMenu", "霓虹灯颜色", "选择颜色")

    for k, _ in ipairs(vehicleNeonOptions.neonColours) do
        populateMenu("NeonColoursMenu", k, vehicleNeonOptions.neonColours[k].name, "$" .. vehicleCustomisationPrices.neoncolours.price)

        if currentNeonR == vehicleNeonOptions.neonColours[k].r and currentNeonG == vehicleNeonOptions.neonColours[k].g and currentNeonB == vehicleNeonOptions.neonColours[k].b then
            updateItem2Text("NeonColoursMenu", k, "已安装")
        end
    end

    finishPopulatingMenu("NeonColoursMenu")

    --#[Xenons Menu]#--
    createMenu("XenonsMenu", "氙气大灯菜单", "选择种类")

    populateMenu("XenonsMenu", 0, "大灯", "none")
    populateMenu("XenonsMenu", 1, "氙气灯颜色", "none")

    finishPopulatingMenu("XenonsMenu")

    --#[Xenons Headlights Menu]#--
    local currentXenonState = GetCurrentXenonState()
    createMenu("HeadlightsMenu", "大灯定制", "搭载/卸载氙气灯")

    populateMenu("HeadlightsMenu", 0, "卸载氙气灯", "$0")
    populateMenu("HeadlightsMenu", 1, "搭载氙气灯", "$" .. vehicleCustomisationPrices.headlights.price)

    updateItem2Text("HeadlightsMenu", currentXenonState, "已安装")

    finishPopulatingMenu("HeadlightsMenu")

    --#[Xenons Colour Menu]#--
    local currentXenonColour = GetCurrentXenonColour()
    createMenu("XenonColoursMenu", "氙气灯颜色", "选择颜色")

    for _, v in ipairs(vehicleXenonOptions.xenonColours) do
        populateMenu("XenonColoursMenu", v.id, v.name, "$" .. vehicleCustomisationPrices.xenoncolours.price)

        if currentXenonColour == v.id then
            updateItem2Text("XenonColoursMenu", v.id, "已安装")
        end
    end

    finishPopulatingMenu("XenonColoursMenu")
end

function DestroyMenus()
    destroyMenus()
end

function DisplayMenuContainer(state)
    toggleMenuContainer(state)
end

function DisplayMenu(state, menu)
    if state then
        currentMenu = menu
    end

    toggleMenu(state, menu)
    updateMenuHeading(menu)
    updateMenuSubheading(menu)
end

function MenuManager(state, repairOnly)
    if state then
        if currentMenuItem2 ~= "Installed" then
            if isMenuActive("modMenu") then
                if currentCategory == 18 then --Turbo
                    if AttemptPurchase("turbo", currentMenuItemID) then
                        ApplyMod(currentCategory, currentMenuItemID)
                        playSoundEffect("wrench", 0.4)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money!")
                    end
                elseif currentCategory == 11 or currentCategory == 12 or currentCategory== 13 or currentCategory == 15 or currentCategory == 16 then --Performance Upgrades
                    if AttemptPurchase("performance", currentMenuItemID) then
                        ApplyMod(currentCategory, currentMenuItemID)
                        playSoundEffect("wrench", 0.4)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                else
                    if AttemptPurchase("cosmetics") then
                        ApplyMod(currentCategory, currentMenuItemID)
                        playSoundEffect("wrench", 0.4)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                end
            elseif isMenuActive("重新喷漆Menu") then
                if AttemptPurchase("respray") then
                    ApplyColour(currentResprayCategory, currentResprayType, currentMenuItemID)
                    playSoundEffect("respray", 1.0)
                    updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                    updateMenuStatus("Purchased")
                else
                    updateMenuStatus("Not Enough Money")
                end
            elseif isMenuActive("车轮Menu") then
                if currentWheelCategory == 20 then
                    if AttemptPurchase("wheelsmoke") then
                        local r = vehicleTyreSmokeOptions[currentMenuItemID].r
                        local g = vehicleTyreSmokeOptions[currentMenuItemID].g
                        local b = vehicleTyreSmokeOptions[currentMenuItemID].b

                        ApplyTyreSmoke(r, g, b)
                        playSoundEffect("wrench", 0.4)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                else
                    if currentWheelCategory == -1 then --Custom Wheels
                        local currentWheel = GetCurrentWheel()

                        if currentWheel == -1 then
                            updateMenuStatus("Can't Apply Custom Tyres to Stock Wheels")
                        else
                            if AttemptPurchase("customwheels") then
                                ApplyCustomWheel(currentMenuItemID)
                                playSoundEffect("wrench", 0.4)
                                updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                                updateMenuStatus("Purchased")
                            else
                                updateMenuStatus("Not Enough Money")
                            end
                        end
                    else
                        local currentWheel = GetCurrentWheel()
                        local currentCustomWheelState = GetOriginalCustomWheel()

                        if currentCustomWheelState and currentWheel == -1 then
                            updateMenuStatus("Can't Apply Stock Wheels With Custom Tyres")
                        else
                            if AttemptPurchase("wheels") then
                                ApplyWheel(currentCategory, currentMenuItemID, currentWheelCategory)
                                playSoundEffect("wrench", 0.4)
                                updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                                updateMenuStatus("Purchased")
                            else
                                updateMenuStatus("Not Enough Money")
                            end
                        end
                    end
                end
            elseif isMenuActive("NeonsSideMenu") then
                if AttemptPurchase("neonside") then
                    ApplyNeon(currentNeonSide, currentMenuItemID)
                    playSoundEffect("wrench", 0.4)
                    updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                    updateMenuStatus("Purchased")
                else
                    updateMenuStatus("Not Enough Money")
                end
            else
                if currentMenu == "repairMenu" then
                    if AttemptPurchase("repair") then
                        currentMenu = "mainMenu"

                        RepairVehicle()

                        if not repairOnly then
                            toggleMenu(false, "repairMenu")
                            toggleMenu(true, currentMenu)
                        else
                            ExitBennys()
                            QBCore.Functions.Notify('Your vehicle was !')
                        end
                        updateMenuHeading(currentMenu)
                        updateMenuSubheading(currentMenu)
                        playSoundEffect("wrench", 0.4)
                        updateMenuStatus("")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                elseif currentMenu == "mainMenu" then
                    currentMenu = currentMenuItem:gsub("%s+", "") .. "Menu"
                    currentCategory = currentMenuItemID

                    toggleMenu(false, "mainMenu")
                    toggleMenu(true, currentMenu)
                    updateMenuHeading(currentMenu)
                    updateMenuSubheading(currentMenu)
                elseif currentMenu == "重新喷漆Menu" then
                    currentMenu = "ResprayTypeMenu"
                    currentResprayCategory = currentMenuItemID

                    toggleMenu(false, "重新喷漆Menu")
                    toggleMenu(true, currentMenu)
                    updateMenuHeading(currentMenu)
                    updateMenuSubheading(currentMenu)
                elseif currentMenu == "ResprayTypeMenu" then
                    currentMenu = currentMenuItem:gsub("%s+", "") .. "Menu"
                    currentResprayType = currentMenuItemID

                    toggleMenu(false, "ResprayTypeMenu")
                    toggleMenu(true, currentMenu)
                    updateMenuHeading(currentMenu)
                    updateMenuSubheading(currentMenu)
                elseif currentMenu == "车轮Menu" then
                    local currentWheel, _, currentWheelType = GetCurrentWheel()

                    currentMenu = currentMenuItem:gsub("%s+", "") .. "Menu"
                    currentWheelCategory = currentMenuItemID

                    if currentWheelType == currentWheelCategory then
                        updateItem2Text(currentMenu, currentWheel, "已安装")
                    end

                    toggleMenu(false, "车轮Menu")
                    toggleMenu(true, currentMenu)
                    updateMenuHeading(currentMenu)
                    updateMenuSubheading(currentMenu)
                elseif currentMenu == "NeonsMenu" then
                    currentMenu = currentMenuItem:gsub("%s+", "") .. "Menu"
                    currentNeonSide = currentMenuItemID

                    toggleMenu(false, "NeonsMenu")
                    toggleMenu(true, currentMenu)
                    updateMenuHeading(currentMenu)
                    updateMenuSubheading(currentMenu)
                elseif currentMenu == "XenonsMenu" then
                    currentMenu = currentMenuItem:gsub("%s+", "") .. "Menu"

                    toggleMenu(false, "XenonsMenu")
                    toggleMenu(true, currentMenu)
                    updateMenuHeading(currentMenu)
                    updateMenuSubheading(currentMenu)
                elseif currentMenu == "车窗Menu" then
                    if AttemptPurchase("windowtint") then
                        ApplyWindowTint(currentMenuItemID)
                        playSoundEffect("respray", 1.0)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                elseif currentMenu == "NeonColoursMenu" then
                    if AttemptPurchase("neoncolours") then
                        local r = vehicleNeonOptions.neonColours[currentMenuItemID].r
                        local g = vehicleNeonOptions.neonColours[currentMenuItemID].g
                        local b = vehicleNeonOptions.neonColours[currentMenuItemID].b

                        ApplyNeonColour(r, g, b)
                        playSoundEffect("respray", 1.0)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                elseif currentMenu == "HeadlightsMenu" then
                    if AttemptPurchase("headlights") then
                        ApplyXenonLights(currentCategory, currentMenuItemID)
                        playSoundEffect("wrench", 0.4)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                elseif currentMenu == "XenonColoursMenu" then
                    if AttemptPurchase("xenoncolours") then
                        ApplyXenonColour(currentMenuItemID)
                        playSoundEffect("respray", 1.0)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                elseif currentMenu == "经典涂装Menu" then
                    if AttemptPurchase("oldlivery") then
                        ApplyOldLivery(currentMenuItemID)
                        playSoundEffect("wrench", 0.4)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                elseif currentMenu == "车牌样式Menu" then
                    if AttemptPurchase("plateindex") then
                        ApplyPlateIndex(currentMenuItemID)
                        playSoundEffect("wrench", 0.4)
                        updateItem2Text(currentMenu, currentMenuItemID, "已安装")
                        updateMenuStatus("Purchased")
                    else
                        updateMenuStatus("Not Enough Money")
                    end
                elseif currentMenu == "额外功能Menu" then
                    ApplyExtra(currentMenuItemID)
                    playSoundEffect("wrench", 0.4)
                    updateItem2TextOnly(currentMenu, currentMenuItemID, "Toggle")
                    updateMenuStatus("Purchased")
                end
            end
        else
            if currentMenu == "额外功能Menu" then
                ApplyExtra(currentMenuItemID)
                playSoundEffect("wrench", 0.4)
                updateItem2TextOnly(currentMenu, currentMenuItemID, "Toggle")
                updateMenuStatus("Purchased")
            end
        end
    else
        updateMenuStatus("")

        if isMenuActive("modMenu") then
            toggleMenu(false, currentMenu)

            currentMenu = "mainMenu"

            if currentCategory ~= 18 then
                RestoreOriginalMod()
            end

            toggleMenu(true, currentMenu)
            updateMenuHeading(currentMenu)
            updateMenuSubheading(currentMenu)
        elseif isMenuActive("重新喷漆Menu") then
            toggleMenu(false, currentMenu)

            currentMenu = "ResprayTypeMenu"

            RestoreOriginalColours()

            toggleMenu(true, currentMenu)
            updateMenuHeading(currentMenu)
            updateMenuSubheading(currentMenu)
        elseif isMenuActive("车轮Menu") then
            if currentWheelCategory ~= 20 and currentWheelCategory ~= -1 then
                local currentWheel = GetOriginalWheel()

                updateItem2Text(currentMenu, currentWheel, "$" .. vehicleCustomisationPrices.wheels.price)

                RestoreOriginalWheels()
            end

            toggleMenu(false, currentMenu)

            currentMenu = "车轮Menu"


            toggleMenu(true, currentMenu)
            updateMenuHeading(currentMenu)
            updateMenuSubheading(currentMenu)
        elseif isMenuActive("NeonsSideMenu") then
            toggleMenu(false, currentMenu)

            currentMenu = "NeonsMenu"

            RestoreOriginalNeonStates()

            toggleMenu(true, currentMenu)
            updateMenuHeading(currentMenu)
            updateMenuSubheading(currentMenu)
        else
            if currentMenu == "mainMenu" or currentMenu == "repairMenu" then
                ExitBennys()
            elseif currentMenu == "重新喷漆Menu" or currentMenu == "车窗Menu" or currentMenu == "车轮Menu" or currentMenu == "NeonsMenu" or currentMenu == "XenonsMenu" or currentMenu == "经典涂装Menu" or currentMenu == "车牌样式Menu" or currentMenu == "额外功能Menu" then
                toggleMenu(false, currentMenu)

                if currentMenu == "车窗Menu" then
                    RestoreOriginalWindowTint()
                end

                if currentMenu == "经典涂装Menu" then
                    RestoreOldLivery()
                end
                if currentMenu == "车牌样式Menu" then
                    RestorePlateIndex()
                end

                currentMenu = "mainMenu"

                toggleMenu(true, currentMenu)
                updateMenuHeading(currentMenu)
                updateMenuSubheading(currentMenu)
            elseif currentMenu == "ResprayTypeMenu" then
                toggleMenu(false, currentMenu)

                currentMenu = "重新喷漆Menu"

                toggleMenu(true, currentMenu)
                updateMenuHeading(currentMenu)
                updateMenuSubheading(currentMenu)
            elseif currentMenu == "NeonColoursMenu" then
                toggleMenu(false, currentMenu)

                currentMenu = "NeonsMenu"

                RestoreOriginalNeonColours()

                toggleMenu(true, currentMenu)
                updateMenuHeading(currentMenu)
                updateMenuSubheading(currentMenu)
            elseif currentMenu == "HeadlightsMenu" then
                toggleMenu(false, currentMenu)

                currentMenu = "XenonsMenu"

                toggleMenu(true, currentMenu)
                updateMenuHeading(currentMenu)
                updateMenuSubheading(currentMenu)
            elseif currentMenu == "XenonColoursMenu" then
                toggleMenu(false, currentMenu)

                currentMenu = "XenonsMenu"

                RestoreOriginalXenonColour()

                toggleMenu(true, currentMenu)
                updateMenuHeading(currentMenu)
                updateMenuSubheading(currentMenu)
            end
        end
    end
end

function MenuScrollFunctionality(direction)
    scrollMenuFunctionality(direction, currentMenu)
end

-----------------------
----   Threads     ----
-----------------------

-----------------------
---- Client Events ----
-----------------------

RegisterNUICallback("selectedItem", function(data, cb)
    updateCurrentMenuItemID(tonumber(data.id), data.item, data.item2)
    cb("ok")
end)

RegisterNUICallback("updateItem2", function(data, cb)
    currentMenuItem2 = data.item
    cb("ok")
end)
