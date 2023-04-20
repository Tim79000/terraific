-- Nodes

minetest.register_node("terraific:amaranth_tree", {
	description = ("Amaranth Tree"),
	tiles = {"terraific_amaranth_tree.png", "terraific_amaranth_tree.png",
		"terraific_amaranth_tree_side.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 3, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("terraific:amaranth_wood", {
	description = ("Amaranth Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"terraific_amaranth_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("terraific:amaranth_leaves",{
	description = ("Amaranth Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"terraific_amaranth_leaves.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"terraific:amaranth_sapling"}, rarity = 20},
			{items = {"terraific:amaranth_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

-- Gen

	minetest.register_decoration({
		name = "terraific:amaranth_tree",
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