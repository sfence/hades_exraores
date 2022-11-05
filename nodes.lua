local S = minetest.get_translator("extraores")

-- Aluminum (-10k)

minetest.register_node("hades_extraores:stone_with_bauxite", {
 description = S("Bauxite Ore"),
 tiles = {"default_stone.png^extraores_mineral_bauxite.png"},
 is_ground_content = true,
 groups = {cracky=2, porous=1, ore=1},
 drop = 'hades_extraores:bauxite_lump',
 sounds = hades_sounds.node_sound_stone_defaults(),
})
minetest.register_node("hades_extraores:aluminum_block", {
 description = S("Aluminum Block"),
 tiles = {"extraores_aluminum_block.png"},
 is_ground_content = false,
 groups = {cracky=1,metal=1},
 sounds = hades_sounds.node_sound_heavy_metal_defaults(),
})

-- Nickel (-15k)

minetest.register_node("hades_extraores:stone_with_garnierite", {
 description = S("Garnierite Ore"),
 tiles = {"default_stone.png^extraores_mineral_garnierite.png"},
 is_ground_content = true,
 groups = {cracky=3, porous=1, ore=1},
 drop = 'hades_extraores:garnierite_lump',
 sounds = hades_sounds.node_sound_stone_defaults(),
})
minetest.register_node("hades_extraores:nickel_block", {
 description = S("Nickel Block"),
 tiles = {"extraores_nickel_block.png"},
 is_ground_content = false,
 groups = {cracky=1,metal=1},
 sounds = hades_sounds.node_sound_heavy_metal_defaults(),
})

-- Titanium (-20k)

minetest.register_node("hades_extraores:stone_with_rulite", {
 description = S("Rulite Ore"),
 tiles = {"default_stone.png^extraores_mineral_rulite.png"},
 is_ground_content = true,
 groups = {cracky=3, porous=1, ore=1},
 drop = 'hades_extraores:rulite_lump',
 sounds = hades_sounds.node_sound_stone_defaults(),
})
minetest.register_node("hades_extraores:titanium_block", {
 description = S("Titanium Block"),
 tiles = {"extraores_titanium_block.png"},
 is_ground_content = false,
 groups = {cracky=1,metal=1},
 sounds = hades_sounds.node_sound_heavy_metal_defaults(),
})

-- Tungsten (-25k)

minetest.register_node("hades_extraores:stone_with_wolframite", {
 description = S("Wolframite Ore"),
 tiles = {"default_stone.png^extraores_mineral_wolframite.png"},
 is_ground_content = true,
 groups = {cracky=3, porous=1, ore=1},
 drop = 'hades_extraores:wolframite_lump',
 sounds = hades_sounds.node_sound_stone_defaults(),
})
minetest.register_node("hades_extraores:tungsten_block", {
 description = S("Tungsten Block"),
 tiles = {"extraores_tungsten_block.png"},
 is_ground_content = false,
 groups = {cracky=1,metal=1},
 sounds = hades_sounds.node_sound_heavy_metal_defaults(),
})

-- Lithium (-30k)

minetest.register_node("hades_extraores:stone_with_spodumene", {
 description = S("Spodumene Ore"),
 tiles = {"default_stone.png^extraores_mineral_spodumene.png"},
 is_ground_content = true,
 groups = {cracky=2, porous=1, ore=1},
 drop = 'hades_extraores:spodumene_lump',
 sounds = hades_sounds.node_sound_stone_defaults(),
})
minetest.register_node("hades_extraores:lithium_block", {
 description = S("Lithium Block"),
 tiles = {"extraores_lithium_block.png"},
 is_ground_content = false,
 groups = {cracky=1,metal=1},
 sounds = hades_sounds.node_sound_heavy_metal_defaults(),
})

-- Platinum

minetest.register_node("hades_extraores:stone_with_platinum", {
 description = S("Platinum Ore"),
 tiles = {"default_stone.png^extraores_mineral_platinum.png"},
 is_ground_content = true,
 groups = {cracky=2, porous=1, ore=1},
 drop = 'hades_extraores:platinum_lump',
 sounds = hades_sounds.node_sound_stone_defaults(),
})
minetest.register_node("hades_extraores:platinum_block", {
 description = S("Platinum Block"),
 tiles = {"extraores_platinum_block.png"},
 is_ground_content = false,
 groups = {cracky=1,metal=1},
 sounds = hades_sounds.node_sound_heavy_metal_defaults(),
})

-- Halite

minetest.register_node("hades_extraores:halite", {
 description = S("Halite"),
 tiles = {"default_stone.png^extraores_mineral_halite.png"},
 is_ground_content = true,
 groups = {cracky=2, porous=1, ore=1},
 drop = 'hades_extraores:halite_lump 9',
 sounds = hades_sounds.node_sound_stone_defaults(),
})
minetest.register_node("hades_extraores:halite_block", {
 description = S("Halite Block"),
 tiles = {"extraores_halite_block.png"},
 is_ground_content = false,
 groups = {cracky=1},
 sounds = hades_sounds.node_sound_stone_defaults(),
})

-- Silver - for support hades_extramaterials

minetest.register_node("hades_extraores:stone_with_silver", {
 description = S("Silver Ore"),
 tiles = {"default_stone.png^extraores_mineral_silver.png"},
 is_ground_content = true,
 groups = {cracky=2, porous=1, ore=1},
 drop = 'hades_extraores:silver_lump',
 sounds = hades_sounds.node_sound_stone_defaults(),
})
minetest.register_node("hades_extraores:silver_block", {
 description = S("Silver Block"),
 tiles = {"extraores_silver_block.png"},
 is_ground_content = false,
 groups = {cracky=1,metal=1},
 sounds = hades_sounds.node_sound_heavy_metal_defaults(),
})

