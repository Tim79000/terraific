minetest.register_craftitem("terraific:hemotite_ingot", {
	description = ("Hemotite Ingot"),
	inventory_image = "terraific_hemotite_ingot.png"
})

minetest.register_craftitem("terraific:hemotite_lump", {
	description = ("Hemotite Lump"),
	inventory_image = "terraific_hemotite_lump.png"
})

minetest.register_node("terraific:gorock_with_hemotite", {
	description = ("Hemotite Ore"),
	tiles = {"terraific_gorock.png^terraific_hemotite_ore.png"},
	groups = {cracky = 2},
	drop = "terraific:hemotite_lump",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terraific:hemotite_block", {
	description = ("Hemotite Block"),
	tiles = {"terraific_hemotite_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_metal_defaults(),
})

-- Recipes

minetest.register_craft({
	output = "terraific:hemotite_block",
	recipe = {
		{"terraific:hemotite_ingot", "terraific:hemotite_ingot", "terraific:hemotite_ingot"},
		{"terraific:hemotite_ingot", "terraific:hemotite_ingot", "terraific:hemotite_ingot"},
		{"terraific:hemotite_ingot", "terraific:hemotite_ingot", "terraific:hemotite_ingot"},
	}
})

minetest.register_craft({
	output = "terraific:hemotite_ingot 9",
	recipe = {
		{"terraific:hemotite_block"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "terraific:hemotite_ingot",
	recipe = "terraific:hemotite_lump",
})



-- Generation

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "terraific:gorock_with_hemotite",
		wherein        = "terraific:gorock",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -255,
	})
