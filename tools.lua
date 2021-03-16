local S = minetest.get_translator("hades_extraores");
-- nickel
-- titanium
-- tungsten
minetest.register_tool("hades_extraores:pick_titanium", {
 description = S("Titanium Pickaxe"),
 _tt_help = S("Digs hard, cracky blocks"),
 inventory_image = "extraores_tool_titaniumpick.png",
 groups = { pickaxe = 1, },
 tool_capabilities = {
  full_punch_interval = 0.8,
  max_drop_level=3,
  groupcaps={
   cracky = {times={[1]=1.70, [2]=0.70, [3]=0.30}, uses=150, maxlevel=3},
  },
  damage_groups = {fleshy=6},
 },
})
minetest.register_tool("hades_extraores:pick_tungsten", {
 description = S("Tungsten Pickaxe"),
 _tt_help = S("Digs hard, cracky blocks"),
 inventory_image = "extraores_tool_tungstenpick.png",
 groups = { pickaxe = 1, },
 tool_capabilities = {
  full_punch_interval = 0.8,
  max_drop_level=3,
  groupcaps={
   cracky = {times={[1]=1.50, [2]=0.60, [3]=0.20}, uses=200, maxlevel=3},
  },
  damage_groups = {fleshy=6},
 },
})

-- aluminium handle
local tools = {};
tools["hades_core:pick_wood"] = "hades_extraores:pick_wood_handle_aluminium"
tools["hades_core:pick_stone"] = "hades_extraores:pick_stone_handle_aluminium"
tools["hades_core:pick_steel"] = "hades_extraores:pick_steel_handle_aluminium"
tools["hades_core:pick_bronze"] = "hades_extraores:pick_bronze_handle_aluminium"
tools["hades_core:pick_mese"] = "hades_extraores:pick_mese_handle_aluminium"
tools["hades_core:pick_prism"] = "hades_extraores:pick_prism_handle_aluminium"
tools["hades_extraores:pick_titanium"] = "hades_extraores:pick_titanium_handle_aluminium"
tools["hades_extraores:pick_tungsten"] = "hades_extraores:pick_tungsten_handle_aluminium"
tools["hades_core:shovel_wood"] = "hades_extraores:shovel_wood_handle_aluminium"
tools["hades_core:shovel_stone"] = "hades_extraores:shovel_stone_handle_aluminium"
tools["hades_core:shovel_steel"] = "hades_extraores:shovel_steel_handle_aluminium"
tools["hades_core:shovel_bronze"] = "hades_extraores:shovel_bronze_handle_aluminium"
tools["hades_core:shovel_mese"] = "hades_extraores:shovel_mese_handle_aluminium"
tools["hades_core:shovel_prism"] = "hades_extraores:shovel_prism_handle_aluminium"
--tools["hades_extraores:shovel_titanium"] = "hades_extraores:shovel_titanium_handle_aluminium"
--tools["hades_extraores:shovel_tungsten"] = "hades_extraores:shovel_tungsten_handle_aluminium"

for orig_tool, new_tool in pairs(tools) do
  local orig_def = minetest.registered_tools[orig_tool];
  if (orig_def==nil) then
    minetest.log("error", "Missing definition of item "..orig_tool)
    break;
  end
  
  local new_def = table.copy(orig_def);
  
  new_def.description = new_def.description.." "..S("with aluminium handle")  ;
  if (new_def.tool_capabilities.groupcaps.cracky~=nil) then
    new_def.inventory_image = new_def.inventory_image.."^extraores_handle_pick_aluminium.png";
  elseif (new_def.tool_capabilities.groupcaps.crumbly~=nil) then
    new_def.inventory_image = new_def.inventory_image.."^extraores_handle_shovel_aluminium.png";
  elseif (new_def.tool_capabilities.groupcaps.choppy~=nil) then
    new_def.inventory_image = new_def.inventory_image.."^extraores_handle_axe_aluminium.png";
  else
    minetest.log("error", "Tool have no one of groups cracky or choppy");
    break;
  end
  
  for group_key, group_data in pairs(new_def.tool_capabilities.groupcaps) do
    for key, value in pairs(new_def.tool_capabilities.groupcaps[group_key].times) do
      new_def.tool_capabilities.groupcaps[group_key].times[key] = value*0.8;
    end
    new_def.tool_capabilities.groupcaps[group_key].uses = new_def.tool_capabilities.groupcaps[group_key].uses*1.2;
  end
  
  minetest.register_tool(new_tool, new_def);
end

-- aluminium glow handle
local tools = {};
tools["hades_core:pick_wood"] = "hades_extraores:pick_wood_handle_glow"
tools["hades_core:pick_stone"] = "hades_extraores:pick_stone_handle_glow"
tools["hades_core:pick_steel"] = "hades_extraores:pick_steel_handle_glow"
tools["hades_core:pick_bronze"] = "hades_extraores:pick_bronze_handle_glow"
tools["hades_core:pick_mese"] = "hades_extraores:pick_mese_handle_glow"
tools["hades_core:pick_prism"] = "hades_extraores:pick_prism_handle_glow"
tools["hades_core:shovel_wood"] = "hades_extraores:shovel_wood_handle_glow"
tools["hades_core:shovel_stone"] = "hades_extraores:shovel_stone_handle_glow"
tools["hades_core:shovel_steel"] = "hades_extraores:shovel_steel_handle_glow"
tools["hades_core:shovel_bronze"] = "hades_extraores:shovel_bronze_handle_glow"
tools["hades_core:shovel_mese"] = "hades_extraores:shovel_mese_handle_glow"
tools["hades_core:shovel_prism"] = "hades_extraores:shovel_prism_handle_glow"

for orig_tool, new_tool in pairs(tools) do
  local orig_def = minetest.registered_tools[orig_tool];
  
  local new_def = table.copy(orig_def);
  
  new_def.description = new_def.description.." "..S("with glow handle")  ;
  new_def.inventory_image = new_def.inventory_image.."^extraores_handle_pick_glow.png";
  
  new_def.light_source = 11;
  
  minetest.register_tool(new_tool, new_def);
end

