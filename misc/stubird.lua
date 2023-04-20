-- Yay, strange looking bird.

mobs:register_mob("terraific:stubird", {
	stepheight = 0.6,
	type = "animal",
	passive = true,
	hp_min = 10,
	hp_max = 10,
	armor = 100,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 0.95, 0.4},
	visual = "mesh",
        visual_size = {"x = 100, y = 100"},
	mesh = "terraific_stubird.obj",
	textures = {
		{"terraific_stubird.png"}
	},
	makes_footstep_sound = true,
--	sounds = {
--		random = "mobs_pig",
--		attack = "mobs_pig_angry"
--	},
	walk_velocity = 2,
	run_velocity = 3,
	jump = true,
	jump_height = 6,
	pushable = true,
	follow = {"farming:seed_wheat"},
	view_range = 10,
--	drops = {
--		{name = "mobs:pork_raw", chance = 1, min = 1, max = 3}
--	},
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	fear_height = 2,
--	animation = {
--		speed_normal = 15,
--		stand_start = 25,
--		stand_end = 55,
--		walk_start = 70,
--		walk_end = 100,
--		punch_start = 70,
--		punch_end = 100,
--
--		die_start = 1, -- we dont have a specific death animation so we will
--		die_end = 2, --   re-use 2 standing frames at a speed of 1 fps and
--		die_speed = 1, -- have mob rotate when dying.
--		die_loop = false,
--		die_rotate = true
--	},

	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 5, 50, false, nil) then return end
	end
})


local spawn_on = {"default:jungletree"}
local spawn_by = {"group:grass"}

if minetest.get_mapgen_setting("mg_name") ~= "v6" then
	spawn_on = {"default:jungletree"}
	spawn_by = {"group:grass"}
end

if not mobs.custom_spawn_animal then

	mobs:spawn({
		name = "terraific:stubird",
		nodes = spawn_on,
		neighbors = spawn_by,
		min_light = 14,
		interval = 60,
		chance = 8000,
		min_height = 0,
		max_height = 200,
		day_toggle = true
	})
end


-- spawn egg
mobs:register_egg("terraific:stubird", ("Stubird"), "terraific_stubird_inv.png")


-- raw porkchop
--minetest.register_craftitem(":mobs:pork_raw", {
--	description = S("Raw Porkchop"),
--	inventory_image = "mobs_pork_raw.png",
--	on_use = minetest.item_eat(4),
--	groups = {food_meat_raw = 1, food_pork_raw = 1, flammable = 2}
--})

-- cooked porkchop
--minetest.register_craftitem(":mobs:pork_cooked", {
--	description = S("Cooked Porkchop"),
--	inventory_image = "mobs_pork_cooked.png",
--	on_use = minetest.item_eat(8),
--	groups = {food_meat = 1, food_pork = 1, flammable = 2}
--})

--minetest.register_craft({
--	type = "cooking",
--	output = "mobs:pork_cooked",
--	recipe = "mobs:pork_raw",
--	cooktime = 5
--})
