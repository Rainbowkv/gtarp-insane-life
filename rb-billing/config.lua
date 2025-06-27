Config = {}

Config.maxReasonLen = 20

Config.JobInvoices = {
    ['police'] = {
        label = '警局',
        requiredGrade = 1, -- 能以警局名义开罚单的最小职级，目前为初级警员
    },
    ['ambulance'] = {
        label = '医院',
        requiredGrade = 1, -- The minimum grade required to create & pay invoices
    },
    ['mechanic'] = {
        label = '修车厂',
        requiredGrade = 1, -- The minimum grade required to create & pay invoices
    },
    ['casino'] = {
        label = '赌场',
        requiredGrade = 1, -- The minimum grade required to create & pay invoices
    },
    ['burgershot'] = {
        label = '汉堡王',
        requiredGrade = 1, -- The minimum grade required to create & pay invoices
    },
    ['taxi'] = {
        label = '出租车公司',
        requiredGrade = 0, -- The minimum grade required to create & pay invoices
    },
}