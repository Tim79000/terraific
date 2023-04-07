if minetest.get_modpath("stairs") then

	stairs.register_stair_and_slab("cobbled_gorock", "terraific:cobbled_gorock",
		{cracky = 3},
		{"terraific_gorock.png^terraific_cobbled_1.png"},
		"Cobbled Gorock Stair",
		"Cobbled Gorock Slab",
		default.node_sound_stone_defaults())

	stairs.register_stair_and_slab("gorock_bricks", "terraific:gorock_bricks",
		{cracky = 2},
		{"terraific_gorock.png^terraific_bricks.png"},
		"Gorock Bricks Stair",
		"Gorock Bricks Slab",
		default.node_sound_stone_defaults())

	stairs.register_stair_and_slab("moldy_cobbled_gorock", "terraific:moldy_cobbled_gorock",
		{cracky = 3},
		{"terraific_gorock.png^terraific_cobbled_1.png^terraific_moldy.png"},
		"Moldy Cobbled Gorock Stair",
		"Moldy Cobbled Gorock Slab",
		default.node_sound_stone_defaults())

end