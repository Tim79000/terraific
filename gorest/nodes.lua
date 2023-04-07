-- Gorock

minetest.register_node("terraific:gorock", {
	description = ("Gorock"),
	tiles = {"terraific_gorock.png"},
	groups = {cracky = 3, stone = 1},
	drop = "terraific:cobbled_gorock",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terraific:cobbled_gorock", {
	description = ("Cobbled Gorock"),
	tiles = {"terraific_gorock.png^terraific_cobbled_1.png"},
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terraific:moldy_cobbled_gorock", {
	description = ("Moldy Cobbled Gorock"),
	tiles = {"terraific_gorock.png^terraific_cobbled_1.png^terraific_moldy.png"},
	groups = {cracky = 3, stone = 1},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terraific:gorock_bricks", {
	description = ("Gorock Bricks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terraific_gorock.png^terraific_bricks.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})


-- Bilestone

minetest.register_node("terraific:bilestone", {
	description = ("Bilestone"),
	tiles = {"terraific_bilestone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "terraific:cobbled_bilestone",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terraific:cobbled_bilestone", {
	description = ("Cobbled Bilestone"),
	tiles = {"terraific_bilestone.png^terraific_cobbled_2.png"},
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terraific:bilestone_bricks", {
	description = ("Bilestone Bricks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terraific_bilestone.png^terraific_bricks.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

-- Platelite

minetest.register_node("terraific:platelite", {
	description = ("Platelite"),
	tiles = {"terraific_platelite.png"},
	groups = {cracky = 3, stone = 1},
	drop = "terraific:cobbled_bilestone",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terraific:cobbled_platelite", {
	description = ("Cobbled Platelite"),
	tiles = {"terraific_platelite.png^terraific_cobbled_2.png"},
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("terraific:platelite_bricks", {
	description = ("Platelite Bricks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terraific_platelite.png^terraific_bricks.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})


-- Hemograss, get it??? Hemoglobin?

minetest.register_node("terraific:dirt_with_hemograss", {
	description = ("Dirt with Hemograss"),
	tiles = {"terraific_hemograss.png", "default_dirt.png",
		{name = "default_dirt.png^terraific_hemograss_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})


-- Organ Stuff

minetest.register_node("terraific:parenchyma", {
	description = ("Parenchyma"),
	tiles = {"terraific_parenchyma.png"},
	groups = {oddly_breakable_by_hand = 3},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("terraific:myocardium", {
	description = ("Myocardium"),
	tiles = {"terraific_myocardium.png"},
	groups = {oddly_breakable_by_hand = 3},
	sounds = default.node_sound_dirt_defaults(),
})