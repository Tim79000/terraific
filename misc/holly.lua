--Thin Tree



-- Nodes

minetest.register_node("terraific:holly_tree", {
	description = ("Holly Tree"),
	tiles = {"terraific_holly_tree.png", "terraific_holly_tree.png",
		"terraific_holly_tree_side.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2500, -0.5000, -0.2500, 0.2500, 0.5000, 0.2500}
		},
	},
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("terraific:holly_wood", {
	description = ("Holly Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terraific_holly_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("terraific:holly_leaves",{
	description = ("Holly Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"terraific_holly_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"terraific:holly_sapling"}, rarity = 20},
			{items = {"terraific:holly_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

-- Gen

	minetest.register_decoration({
		name = "terraific:holly_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 80,
		fill_ratio = 0.0004,
		biomes = {"grassland"},
		y_max = 31000,
		y_min = 1,
		schematic = "terraific_holly_tree.lua",
		flags = "place_center_x",
		rotation = "random",
	})