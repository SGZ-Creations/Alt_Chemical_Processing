data:extend({
    {
        type = "bool-setting",
        name = "LiquidCoal",
        setting_type = "startup",
        default_value = false,
        order = "1Afa"
    },
	{
		type = "double-setting",
		name = "MiningSpeedSetting",
		setting_type = "startup",
		default_value = 0.5,
		minimum_value = 0.01,
		order = "5Yaa"
	},
    {
        type = "bool-setting",
        name = "CliffRemovalService",
        setting_type = "startup",
        default_value = false,
        order = "5Yac"
    },
    {
        type = "bool-setting",
        name = "CliffAltItem",
        setting_type = "startup",
        default_value = false,
        order = "5Yad"
    },
    {
        type = "double-setting",
        name = "ExplosiveRange",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 0.1,
        order = "5Yae"
    },
    {
        type = "double-setting",
        name = "ExplosiveRadius",
        setting_type = "startup",
        default_value = 1.5,
        minimum_value = 0.1,
        order = "5Yaf"
    },
})