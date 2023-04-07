minetest.register_node("terraific:marroak_tree", {
	description = ("Marroak Tree"),
	tiles = {"terraific_marroak_tree.png", "terraific_marroak_tree.png", "terraific_marroak_tree_side.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})