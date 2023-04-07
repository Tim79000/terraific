	minetest.register_biome({
		name = "gorest",
		node_top = "terraific:dirt_with_hemograss",
		node_stone = "terraific:gorock",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_dungeon = "terraific:cobbled_gorock",
		node_dungeon_alt = "terraific:moldy_cobbled_gorock",
		node_dungeon_stair = "stairs:stair_cobbled_gorock",
		y_max = 31000,
		y_min = 1,
		heat_point = 76,
		humidity_point = 89,
	})

	minetest.register_biome({
		name = "gorest_shore",
		node_top = "default:dirt",
		node_stone = "terraific:gorock",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_dungeon = "terraific:cobbled_gorock",
		node_dungeon_alt = "terraific:moldy_cobbled_gorock",
		node_dungeon_stair = "stairs:stair_cobbled_gorock",
		y_max = 0,
		y_min = -1,
		heat_point = 76,
		humidity_point = 89,
	})

	minetest.register_biome({
		name = "gorest_ocean",
		node_top = "default:sand",
		node_stone = "terraific:gorock",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		node_cave_liquid = "default:water_source",
		node_dungeon = "terraific:cobbled_gorock",
		node_dungeon_alt = "terraific:moldy_cobbled_gorock",
		node_dungeon_stair = "stairs:stair_cobbled_gorock",
		vertical_blend = 1,
		y_max = -2,
		y_min = -255,
		heat_point = 76,
		humidity_point = 89,
	})

	minetest.register_biome({
		name = "gorest_under",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 76,
		humidity_point = 89,
	})


-- This is to make the biome more pretty. :)

	minetest.register_ore({
		ore_type        = "stratum",
		ore             = "terraific:platelite",
		wherein         = {"terraific:gorock"},
		clust_scarcity  = 1,
		y_max           = 43,
		y_min           = 9,
		noise_params    = {
			offset = 23,
			scale = 16,
			spread = {x = 128, y = 128, z = 128},
			seed = 20790,
			octaves = 1,
		},
		stratum_thickness = 3,
		biomes = {"gorest"},
	})
