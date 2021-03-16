
minetest.register_craft({
    type = "cooking",
    cooktime = 25,
    output = "hades_extraores:platinum_ingot",
    recipe = "hades_extraores:platinum_lump",
   })

minetest.register_craft({
    type = "cooking",
    cooktime = 15,
    output = "hades_extraores:silver_ingot",
    recipe = "hades_extraores:silver_lump",
   })

local ingots = {
  aluminium_ingot = "aluminium_block",
  nickel_ingot = "nickel_block",
  tungsten_ingot = "tungsten_block",
  lithium_ingot = "lithium_block",
  platinum_ingot = "platinum_block",
  halite_lump = "halite_block",
  silver_ingot = "silver_block",
}

for ingot, block in pairs(ingots) do
  minetest.register_craft( {
    output = block,
    recipe = {
      {ingot,ingot,ingot},
      {ingot,ingot,ingot},
      {ingot,ingot,ingot},
    },
  })
  minetest.register_craft( {
    output = ingot .. " 9",
    recipe = {
      {block},
    },
  })
end
