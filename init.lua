local modpath = minetest.get_modpath("terraific")


-- Gorest
dofile(modpath.."/gorest/nodes.lua")
dofile(modpath.."/gorest/hemotite.lua")
dofile(modpath.."/gorest/biome.lua")
dofile(modpath.."/gorest/marroak.lua")
dofile(modpath.."/gorest/stairs.lua")

-- Misc
dofile(modpath.."/misc/holly.lua")
dofile(modpath.."/misc/amaranth.lua")


if minetest.get_modpath("mobs") then
dofile(modpath.."/misc/stubird.lua")
end