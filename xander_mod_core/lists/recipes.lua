--==========  ALL  ==========
--Format: name, category, time, enabled at start, ingredients lsit, results list
xm_all_recipes_to_impose = {}




--==========  MATERIAL  ==========
local xm_material_recipes = {}

xm_material_recipes["raw-material"] = {
	{"raw-chromate-slag", "smelting-3", 4, false, {{"conc-chromite", 1}, {"sodium-hydroxide", 1}, {type = "fluid", name = "oxygen", amount = 5}}, {{"raw-chromate-slag", 2}}},
	{"raw-iron-0", "smelting", 27, false, {{"iron-ore", 6}, {"limestone", 1}}, {{"raw-iron", 9}}},
	{"raw-iron-1", "smelting-3", 36, false, {{"iron-ore", 6}, {"coke", 6}, {"limestone", 1}}, {{"raw-iron", 12}}},
	--XX{"raw-iron-2", "smelting-3", 4, false, {{"conc-hematite", 1}, {type = "fluid", name = "carbon-monoxide", amount = 10}}, {{"raw-iron", 1}, {type = "fluid", name = "carbon-dioxide", amount = 10}}},
	{"raw-nickel", "smelting-3", 8, false, {{"conc-millerite", 2}, {"coke", 2}, {type = "fluid", name = "oxygen", amount = 10}}, {{"raw-nickel", 4}, {type = "fluid", name = "sulfur-dioxide", amount = 15}}},
	{"raw-copper", "smelting-3", 6, false, {{"conc-chalcocite", 2}, {"coke", 2}, {type = "fluid", name = "oxygen", amount = 10}}, {{"raw-copper", 4}, {type = "fluid", name = "sulfur-dioxide", amount = 15}}},
	{"raw-silver-0", "smelting-3", 4, false, {{"igneous-sulfide", 4}, {"lead", 1}, {type = "fluid", name = "oxygen", amount = 20}}, {{"raw-silver", 1}}},--1
	{"raw-platinum-0", "washing-1", 6, false, {{"magnetic", 4}, {type = "fluid", name = "sulfuric-acid", amount = 20}}, {{"raw-platinum", 1}}},--1
	{"raw-gold-0", "washing-1", 5, false, {{"skarn", 4}, {type = "fluid", name = "sulfuric-acid", amount = 20}}, {{"raw-gold", 1}}},--1
}

xm_material_recipes["concentrate"] = {
	{"conc-chalcocite", "washing-2", 15, false, {{"copper-ore", 10}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 100}}, {{"conc-chalcocite", 10}}},
	{"conc-borax", "washing-1", 1.25, false, {{"evaporites", 1}, {type = "fluid", name = "water-distilled", amount = 10}}, {{"conc-borax", 1}}},
	{"conc-millerite-0", "washing-1", 4, false, {{"igneous-sulfide", 3}, {type = "fluid", name = "water", amount = 30}}, {{"conc-millerite", 1}}},
	{"conc-millerite-1", "washing-2", 20, false, {{"igneous-sulfide", 15}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 100}}, {{"conc-millerite", 10}}},
	{"clay-0", "hand", 0.5, true, {{"laterite", 1}}, {{"clay", 1}}},--1
	{"clay-1", "washing-0", 1, false, {{"laterite", 1}, {type = "fluid", name = "water", amount = 20}}, {{"clay", 1}}},--1
	{"kaolin", "chemistry", 2, false, {{"clay", 2}, {type = "fluid", name = "steam", amount = 5}}, {{"kaolin", 1}}},--1
	{"conc-bauxite", "washing-1", 2, false, {{"laterite", 2}, {type = "fluid", name = "water", amount = 20}}, {{"conc-bauxite", 1}}},
	{"conc-chromite", "washing-2", 12, false, {{"magnetic", 12}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 100}}, {{"conc-chromite", 10}}},
	{"conc-galena", "washing-2", 8, false, {{"massive-sulfide", 10}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 100}}, {{"conc-galena", 10}}},
	{"conc-fluorite-0", "washing-1", 3, false, {{"phosphorite", 3}, {type = "fluid", name = "water", amount = 20}}, {{"conc-fluorite", 1}}},
	--XX{"conc-fluorite-1", "washing", 12, false, {{"phosphorite", 12}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 20}}, {{"conc-fluorite", 12}}},
	{"sand-0", "washing-0", 1, false, {{"sand-heavy", 1}, {type = "fluid", name = "water", amount = 10}}, {{"sand", 1}}},
	{"conc-cassiterite", "washing-2", 8, false, {{"skarn", 10}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 100}}, {{"conc-cassiterite", 10}}},
	{"conc-scheelite-0", "washing-1", 6, false, {{"skarn", 6}, {type = "fluid", name = "water", amount = 40}}, {{"conc-scheelite", 1}}},
	{"conc-scheelite-1", "washing-2", 16, false, {{"skarn", 12}, {"surfactant", 1}, {type = "fluid", name = "water", amount = 100}}, {{"conc-scheelite", 4}}},
	{"gravel", "washing-0", 1, false, {{"stone", 1}}, {{"gravel", 1}}},
	{"limestone-0", "washing-0", 2, false, {{"stone", 4}}, {{"limestone", 3}}},
	{"magnesite", "washing-1", 4, false, {{"stone", 3}, {type = "fluid", name = "water", amount = 10}}, {{"magnesite", 1}}},
}

xm_material_recipes["oxide"] = {
	{"aluminum-hydroxide", "chemistry", 4, false, {{"conc-bauxite", 1}, {"sodium-hydroxide", 1}, {type = "fluid", name = "water-distilled", amount = 10}}, {{"aluminum-hydroxide", 2}}},
	{"chromium-oxide", "chemistry-2", 3, false, {{"raw-chromate-slag", 2}, {type = "fluid", name = "sulfuric-acid", amount = 4}, {type = "fluid", name = "formaldehyde", amount = 10}}, {{"chromium-oxide", 1}}},
	{"tungsten-oxide", "chemistry", 3, false, {{"conc-scheelite", 1}, {type = "fluid", name = "sulfuric-acid", amount = 10}}, {{"tungsten-oxide", 1}}},
	{"lead-oxide", "smelting-3", 4, false, {{"conc-galena", 2}, {type = "fluid", name = "oxygen", amount = 10}}, {{"lead-oxide", 2}, {type = "fluid", name = "sulfur-dioxide", amount = 15}}},
}

xm_material_recipes["ingot"] = {
	{"aluminum", "smelting-3", 120, false, {{"aluminum-hydroxide", 23}, {"cryolite", 1}, {"graphite", 12}}, {{"aluminum", 24}, {type = "fluid", name = "carbon-monoxide", amount = 240}}},--1
	{"chromium", "smelting-3", 4, false, {{"chromium-oxide", 1}, {"aluminum", 2}}, {{"chromium", 2}}},--1
	{"nickel-0", "smelting-2", 5, false, {{"conc-millerite", 1}}, {{"nickel", 1}}},--1
	{"nickel-1", "electrolysis-2", 16, false, {{"raw-nickel", 8}, {type = "fluid", name = "sulfuric-acid", amount = 4}}, {{"nickel", 8}, {"raw-platinum", 1}}},--1
	--XX{"nickel-1", "chemistry", 2, false, {{"oxide-nickel", 1}, {type = "fluid", name = "carbon-monoxide", amount = 15}}, {{"nickel", 1}, {type = "fluid", name = "carbon-monoxide", amount = 10}}},--1
	{"silver", "electrolysis-1", 4, false, {{"raw-silver", 1}, {type = "fluid", name = "nitric-acid", amount = 1}}, {{"silver", 1}}},--1
	{"tin-0", "smelting", 4, true, {{"skarn", 2}}, {{"tin", 1}}},--1
	{"tin-1", "smelting-2", 24, false, {{"skarn", 12}, {"evaporites", 1}}, {{"tin", 8}}},--1
	{"tin-2", "smelting-3", 2, false, {{"conc-cassiterite", 1}, {"coke", 1}}, {{"tin", 1}}},--1
	{"tungsten", "smelting-3", 2, false, {{"tungsten-oxide", 1}, {type = "fluid", name = "hydrogen", amount = 30}}, {{"tungsten", 1}}},--1
	{"platinum", "chemistry-2", 4, false, {{"raw-platinum", 1}, {type = "fluid", name = "chlorine", amount = 4}, {type = "fluid", name = "hydrogen", amount = 1}}, {{"platinum", 1}}},--1
	{"gold", "chemistry-2", 5, false, {{"raw-gold", 1}, {type = "fluid", name = "chlorine", amount = 2}, {type = "fluid", name = "sulfur-dioxide", amount = 2}}, {{"gold", 1}}},--1
	{"lead-0", "smelting", 4, true, {{"massive-sulfide", 2}}, {{"lead", 1}}},--1
	{"lead-1", "smelting-2", 24, false, {{"massive-sulfide", 12}, {"evaporites", 1}}, {{"lead", 8}}},--1
	{"lead-2", "smelting-3", 2, false, {{"lead-oxide", 1}, {"coke", 1}}, {{"lead", 1}}},--1
	{"solder-0", "smelting", 5, false, {{"tin", 3}, {"lead", 2}}, {{"solder", 5}}}--1
}

xm_material_recipes["stock"] = {
	{"iron-plate", "smelting", 6, true, {{"iron-ore", 1}}, {{"iron-plate", 1}}},--1
	{"iron-plate-1", "smelting", 2, false, {{"raw-iron", 1}}, {{"iron-plate", 1}}},
	{"stock-cast-iron-0", "smelting", 4, true, {{"iron-ore", 1}}, {{"stock-cast-iron", 1}}},--1
	{"stock-cast-iron-1", "smelting-2", 1, false, {{"raw-iron", 1}}, {{"stock-cast-iron", 1}}},--1
	--XX{"stock-cast-iron-2", "smelting-3", 12, false, {{"raw-iron", 7}, {"silicon", 1}}, {{"stock-cast-iron", 8}}},
	{"steel-plate", "smelting", 8, false, {{"iron-plate", 4}}, {{"steel-plate", 1}}},--4
	{"steel-plate-1", "smelting-2", 24, false, {{"raw-iron", 18}, {"clay", 1}}, {{"steel-plate", 6}}},--3 --> final version = 2
	{"steel-plate-2", "smelting-3", 18, false, {{"raw-iron", 12}, {"magnesite", 1}, {type = "fluid", name = "oxygen", amount = 12}}, {{"steel-plate", 6}}},--2
	{"stock-alloy-0", "smelting-3", 12, false, {{"steel-plate", 2}, {"tungsten", 1}, {"nickel", 1}}, {{"stock-alloy", 3}}},--2
	{"stock-stainless", "smelting-3", 18, false, {{"steel-plate", 2}, {"chromium", 1}, {"nickel", 1}}, {{"stock-stainless", 3}}},--2
	
	{"copper-plate", "smelting", 4, true, {{"copper-ore", 1}}, {{"copper-plate", 1}}},--1
	{"copper-plate-1", "smelting-2", 36, false, {{"copper-ore", 6}, {"limestone", 1}}, {{"copper-plate", 9}}},
	{"copper-plate-2", "electrolysis-2", 16, false, {{"raw-copper", 8}, {type = "fluid", name = "sulfuric-acid", amount = 4}}, {{"copper-plate", 8}, {"raw-gold", 1}}},
	{"stock-bronze-0", "smelting-0", 20, true, {{"copper-ore", 5}, {"skarn", 2}}, {{"stock-bronze", 4}}},--1.5
	{"stock-bronze-1", "smelting", 16, false, {{"copper-plate", 8}, {"tin", 1}}, {{"stock-bronze", 8}}},--1.125
	{"stock-bronze-2", "smelting-3", 12, false, {{"copper-plate", 6}, {"nickel", 1}, {"aluminum", 1}}, {{"stock-bronze", 8}}},--1
	{"stock-cupronickel", "smelting-2", 7.5, false, {{"copper-plate", 3}, {"nickel", 2}}, {{"stock-cupronickel", 5}}},--1
	{"stock-duralumin", "smelting-3", 20, false, {{"aluminum", 19}, {"copper-plate", 1}}, {{"stock-duralumin", 10}}},--2
	--{"stock-titanium", "smelting-2", 40, false, {{"titanium", 18}, {"aluminum", 1}, {"vanadium", 1}}, {{"stock-titanium", 20}}},--1
	--XX{"silicon-boule", "smelting-3", 20, false, {{"silicon", 4}, {type = "fluid", name = "chlorine", amount = 10}}, {{"silicon-boule", 1}}},--4
}

xm_material_recipes["nonmetal"] = {
	{"coke", "smelting", 8, false, {{"coal", 4}}, {{"coke", 8}}},--1
	--{"coke-1", "smelting-3", 8, false, {{"coal", 4}}, {{"coke", 8}, {type = "fluid", name = "heavy-oil", amount = 10}}},--1
	{"sulfur-0", "chemistry", 1, false, {{"evaporites", 1}, {type = "fluid", name = "steam", amount = 5}}, {{"sulfur", 1}}},--1
	{"sulfur", "chemistry-2", 1, false, {{type = "fluid", name = "hydrogen-sulfide", amount = 20}, {type = "fluid", name = "sulfur-dioxide", amount = 10}}, {{"sulfur", 1}, {type = "fluid", name = "steam", amount = 10, temperature = 315}}},--1
	{"graphite-0", "washing-1", 2, false, {{"stone", 3}, {type = "fluid", name = "sulfuric-acid", amount = 5}}, {{"graphite", 1}}},--1
	{"graphite-1", "smelting-3", 2, false, {{"coke", 1}}, {{"graphite", 1}}},--1
	{"silicon", "smelting-3", 3, false, {{"sand", 1}, {"coke", 2}}, {{"silicon", 1}, {type = "fluid", name = "carbon-monoxide", amount = 40}}},--1
	{"silicon-boule", "smelting-3", 192, false, {{"silicon", 23}, {"phosphorus", 1}, {type = "fluid", name = "chlorine", amount = 24}}, {{"silicon-boule", 2}}},--12
	{"phosphorus", "smelting-3", 10, false, {{"phosphorite", 1}, {"coke", 5}}, {{"phosphorus", 2}, {type = "fluid", name = "carbon-monoxide", amount = 100}}},--1
}

xm_material_recipes["terrain"] = {
	{"stone-brick", "machine-0", 2, true, {{"stone", 2}}, {{"stone-brick", 1}}},--2
	{"landfill", "washing-1", 3, false, {{"stone", 12}, {"gravel", 6}}, {{"landfill", 1}}},--18
	{"cement", "smelting-2", 9, false, {{"limestone", 2}, {"sand", 1}}, {{"cement", 3}}},--1
	{"concrete", "crafting-with-fluid", 10, false, {{"gravel", 5}, {"cement", 4}, {"steel-rod", 2}, {type = "fluid", name = "water", amount = 20}}, {{"concrete", 10}}},--1
	{"refined-concrete", "crafting-with-fluid", 15, false, {{"gravel", 3}, {"fiber-glass", 2}, {"cement", 4}, {"steel-rod", 4}, {type = "fluid", name = "water", amount = 10}}, {{"refined-concrete", 5}}}--2
}

xm_material_recipes["ceramic"] = {
	{"brick-clay-0", "smelting-0", 3, true, {{"clay", 1}}, {{"brick-clay", 1}}},--1
	{"brick-clay-1", "smelting-2", 4, false, {{"clay", 1}, {"kaolin", 1}}, {{"brick-clay", 2}}},--1
	{"brick-magnesia", "smelting-2", 6, false, {{"magnesite", 1}, {"graphite", 1}}, {{"brick-magnesia", 1}}},--2
	{"silicon-carbide", "smelting-3", 8, false, {{"sand", 1}, {"coke", 3}}, {{"silicon-carbide", 2}, {type = "fluid", name = "carbon-monoxide", amount = 40}}},--1
	
	{"glass-0", "smelting", 24, false, {{"sand", 6}, {"potash", 1}, {"limestone", 1}}, {{"glass", 6}}},--1.333(1/72)
	{"glass-1", "smelting-2", 24, false, {{"sand", 6}, {"conc-borax", 1}, {"limestone", 1}}, {{"glass", 8}}},--1
	{"fiber-glass", "smelting-2", 2, false, {{"glass", 1}}, {{"fiber-glass", 2}}},--0.5
	{"porcelain", "smelting-2", 12, false, {{"kaolin", 1}, {"sand", 1}}, {{"porcelain", 2}}}--2
}

xm_material_recipes["salt"] = {
	{"potash", "smelting-0", 3, false, {{"charcoal", 1}}, {{"potash", 3}}},
	{"saltpeter", "washing-0", 2, false, {{"evaporites", 3}, {type = "fluid", name = "water", amount = 10}}, {{"saltpeter", 2}}},--1
	--XX{"sodium-carbonate", "washing", 4, false, {{"evaporites", 2}, {type = "fluid", name = "water", amount = 30}}, {{"sodium-carbonate", 1}}},--1
	{"cryolite", "chemistry", 6, false, {{"sodium-hydroxide", 3}, {"aluminum-hydroxide", 1}, {type = "fluid", name = "hydrogen-fluoride", amount = 60}}, {{"cryolite", 12}}},--1
}

xm_material_recipes["organic"] = {
	{"charcoal", "smelting-0", 4, true, {{"wood", 2}}, {{"charcoal", 8}}},--(1/4)
	{"resin", "smelting-0", 2, false, {{"wood", 1}}, {{"resin", 4}}},--(1/4)
	{"rubber-raw", "machine-0", 8, false, {{"wood", 1}}, {{"rubber-raw", 12}}},--(1/12)
	{"rubber-sbr", "chemistry", 9, false, {{type = "fluid", name = "btx", amount = 10}, {type = "fluid", name = "ethylene", amount = 20}}, {{"rubber-sbr", 3}}},--1
	{"phenol-0", "chemistry", 2, false, {{"coal", 1}, {type = "fluid", name = "water", amount = 10}}, {{"phenol", 1}}},--1
	{"phenol-1", "chemistry", 2, false, {{"sodium-hydroxide", 1}, {type = "fluid", name = "btx", amount = 10}, {type = "fluid", name = "chlorine", amount = 10}}, {{"phenol", 2}, {type = "fluid", name = "water-brine", amount = 10}}},--1
	{"aromatic", "chemistry-2", 4.5, false, {{type = "fluid", name = "btx", amount = 20}, {type = "fluid", name = "oxygen", amount = 10}}, {{"aromatic", 3}}},--1
	{"surfactant-0", "chemistry", 2, false, {{"sulfur", 1}, {type = "fluid", name = "heavy-oil", amount = 10}}, {{"surfactant", 1}}},--2
	{"surfactant-1", "chemistry-2", 2, false, {{"nitrated-organics", 1}, {"sodium-hydroxide", 1}, {"sulfur", 1}, {type = "fluid", name = "water-distilled", amount = 50}}, {{"surfactant", 3}}},--1
	{"nitrated-organics", "chemistry", 3, false, {{type = "fluid", name = "btx", amount = 10}, {type = "fluid", name = "nitric-acid", amount = 20}}, {{"nitrated-organics", 1}}},--1
}

xm_material_recipes["polymer"] = {
	{"rubber-vulcanized-0", "chemistry", 5, false, {{"rubber-raw", 3}, {"sulfur", 1}}, {{"rubber-vulcanized", 4}}},--0.25(1/16)
	{"rubber-vulcanized-1", "chemistry", 3, false, {{"rubber-sbr", 4}, {"sulfur", 1}, {"graphite", 1}}, {{"rubber-vulcanized", 6}}},--1
	{"pellets-polyethylene", "chemistry", 2, false, {{type = "fluid", name = "ethylene", amount = 5}}, {{"pellets-polyethylene", 1}}},--0.5
	{"pellets-nylon", "chemistry-2", 2, false, {{"aromatic", 1}, {type = "fluid", name = "amine", amount = 5}}, {{"pellets-nylon", 3}}},--0.5
	{"plastic-bar", "machine-1", 0.8, false, {{"pellets-polyethylene", 2}}, {{"plastic-bar", 1}}},--1
	{"plastic-bar-2", "machine-1", 1.25, false, {{"pellets-nylon", 3}, {"fiber-glass", 1}}, {{"plastic-bar", 2}}},--1
}

xm_material_recipes["energetic"] = {
	{"diesel-1", "crafting-with-fluid", 0.5, false, {{type = "fluid", name = "heavy-oil", amount = 15}}, {{"solid-fuel", 1}}},--1
	{"diesel-2", "chemistry-2", 1.5, false, {{type = "fluid", name = "heavy-oil", amount = 10}, {type = "fluid", name = "light-aliphatic", amount = 20}}, {{"solid-fuel", 3}}},--1
	{"powder-black-0", "machine-0", 4, false, {{"charcoal", 1}, {"evaporites", 4}}, {{"gunpowder", 4}}},--1(1/24)
	{"powder-black-1", "machine-1", 6, false, {{"coal", 1}, {"sulfur", 1}, {"saltpeter", 6}}, {{"gunpowder", 8}}},--1
	{"powder-smokeless", "machine-1", 10, false, {{"nitrated-organics", 3}, {type = "fluid", name = "heavy-oil", amount = 10}}, {{"gunpowder", 4}}},--1
	{"explosives", "chemistry", 1, false, {{"nitrated-organics", 1}, {type = "fluid", name = "nitric-acid", amount = 10}, {type = "fluid", name = "water-distilled", amount = 10}}, {{"explosives", 1}}},-- ~ 2
}

xm_all_recipes_to_impose["material"] = xm_material_recipes




--==========  FLUIDS  ==========
local xm_fluids_recipes = {}

xm_fluids_recipes["fluid-element"] = {
	{"distillation-air", "oil-processing", 10, false, {}, {{type = "fluid", name = "nitrogen", amount = 40}, {type = "fluid", name = "oxygen", amount = 10}}},--1
	{"solid-fuel-from-heavy-oil", "smelting-3", 0.5, false, {{type = "fluid", name = "heavy-oil", amount = 20}}, {{"coke", 3}, {type = "fluid", name = "hydrogen", amount = 15}}},
	{"solid-fuel-from-light-oil", "smelting-3", 0.5, false, {{type = "fluid", name = "light-oil", amount = 10}}, {{"coke", 3}, {type = "fluid", name = "hydrogen", amount = 24}}},
	{"solid-fuel-from-petroleum-gas", "smelting-3", 0.5, false, {{type = "fluid", name = "petroleum-gas", amount = 20}}, {{"coke", 3}, {type = "fluid", name = "hydrogen", amount = 36}}},
	{"electrolysis-acid", "electrolysis-1", 6, false, {{type = "fluid", name = "water", amount = 30}, {type = "fluid", name = "sulfuric-acid", amount = 1}}, {{type = "fluid", name = "hydrogen", amount = 20}, {type = "fluid", name = "oxygen", amount = 10}}},--1
	{"electrolysis-base", "electrolysis-2", 30, false, {{type = "fluid", name = "water-distilled", amount = 300}, {"sodium-hydroxide", 1}}, {{type = "fluid", name = "hydrogen", amount = 200}, {type = "fluid", name = "oxygen", amount = 100}}},--1
	{"electrolysis-brine", "electrolysis-1", 12, false, {{type = "fluid", name = "water-brine", amount = 20}}, {{"sodium-hydroxide", 1}, {type = "fluid", name = "hydrogen", amount = 10}, {type = "fluid", name = "chlorine", amount = 10}}},--1
}

xm_fluids_recipes["fluid-hydrogenated"] = {
	{"ammonia", "chemistry", 12, false, {{type = "fluid", name = "nitrogen", amount = 10}, {type = "fluid", name = "hydrogen", amount = 30}}, {{type = "fluid", name = "ammonia", amount = 40}}},--1
	{"hydrogen-fluoride", "chemistry", 2, false, {{"conc-fluorite", 1}, {type = "fluid", name = "sulfuric-acid", amount = 10}}, {{type = "fluid", name = "hydrogen-fluoride", amount = 20}}},--1
	
}

xm_fluids_recipes["fluid-oxide"] = {
	{"carbon-fwd", "chemistry", 1, false, {{type = "fluid", name = "carbon-monoxide", amount = 20}, {type = "fluid", name = "hydrogen", amount = 20}}, {{"coke", 1}, {type = "fluid", name = "water-distilled", amount = 30}}},
	{"carbon-rvs", "chemistry", 1, false, {{"coke", 1}, {type = "fluid", name = "water-distilled", amount = 30}}, {{type = "fluid", name = "carbon-monoxide", amount = 20}, {type = "fluid", name = "hydrogen", amount = 20}}},
	--XX{"carbon-monoxide", "chemistry", 0.5, false, {{"coke", 1}, {type = "fluid", name = "oxygen", amount = 10}}, {{type = "fluid", name = "carbon-monoxide", amount = 20}}},--1
	{"sulfur-dioxide-direct", "chemistry-2", 1, false, {{"sulfur", 1}, {type = "fluid", name = "oxygen", amount = 20}, {type = "fluid", name = "water-distilled", amount = 10}}, {{type = "fluid", name = "sulfur-dioxide", amount = 30}, {type = "fluid", name = "steam", amount = 10, temperature = 315}}},--1
	{"sulfur-dioxide-h2s", "chemistry-2", 1, false, {{type = "fluid", name = "hydrogen-sulfide", amount = 30}, {type = "fluid", name = "oxygen", amount = 30}}, {{type = "fluid", name = "sulfur-dioxide", amount = 30}, {type = "fluid", name = "steam", amount = 30, temperature = 315}}},--1
}

xm_fluids_recipes["fluid"] = {
	{"distillation-water", "oil-processing", 5, false, {{type = "fluid", name = "water", amount = 50}}, {{type = "fluid", name = "water-brine", amount = 10, fluidbox_index = 1}, {type = "fluid", name = "water-distilled", amount = 40, fluidbox_index = 2}}},
	{"sulfuric-acid", "chemistry", 5, false, {{"sulfur", 1}, {"saltpeter", 2}, {type = "fluid", name = "water", amount = 20}}, {{type = "fluid", name = "sulfuric-acid", amount = 10}}},--1
	{"sulfuric-acid-1", "chemistry-2", 1, false, {{type = "fluid", name = "sulfur-dioxide", amount = 3}, {type = "fluid", name = "oxygen", amount = 1}}, {{type = "fluid", name = "sulfuric-acid", amount = 5}, {type = "fluid", name = "steam", amount = 3, temperature = 315}}},--1 --, {type = "fluid", name = "water-distilled", amount = 6}
	{"nitric-acid", "chemistry", 6, false, {{type = "fluid", name = "ammonia", amount = 10}, {type = "fluid", name = "oxygen", amount = 20}}, {{type = "fluid", name = "nitric-acid", amount = 30}, {type = "fluid", name = "steam", amount = 10, temperature = 165}}},--1
}

xm_fluids_recipes["fluid-hydrocarbon"] = {
	{"crude-oil-desulf", "chemistry-2", 4, false, {{type = "fluid", name = "crude-oil", amount = 100}, {type = "fluid", name = "hydrogen", amount = 10}}, {{type = "fluid", name = "crude-oil-desulf", amount = 100}, {type = "fluid", name = "hydrogen-sulfide", amount = 15}}},--1
	{"natural-gas-desulf", "chemistry-2", 4, false, {{type = "fluid", name = "natural-gas", amount = 100}, {type = "fluid", name = "ammonia", amount = 10}}, {{type = "fluid", name = "natural-gas-desulf", amount = 100}, {type = "fluid", name = "hydrogen-sulfide", amount = 15}}},--1
	{"basic-oil-processing", "oil-processing", 10, false, {{type = "fluid", name = "crude-oil", amount = 100}}, {{type = "fluid", name = "heavy-oil", amount = 40, fluidbox_index = 1}, {type = "fluid", name = "btx", amount = 25, fluidbox_index = 2}, {type = "fluid", name = "ethylene", amount = 15, fluidbox_index = 3}}},
	{"advanced-oil-processing", "oil-processing", 8, false, {{type = "fluid", name = "crude-oil-desulf", amount = 100}, {type = "fluid", name = "water-distilled", amount = 50}}, {{type = "fluid", name = "heavy-oil", amount = 30, fluidbox_index = 1}, {type = "fluid", name = "light-oil", amount = 40, fluidbox_index = 2}, {type = "fluid", name = "petroleum-gas", amount = 30, fluidbox_index = 3}}},
	{"coal-liquefaction", "oil-processing", 10, false, {{"coal", 10}, {type = "fluid", name = "heavy-oil", amount = 25}, {type = "fluid", name = "steam", amount = 50}}, {{type = "fluid", name = "heavy-oil", amount = 90, fluidbox_index = 1}, {type = "fluid", name = "btx", amount = 20, fluidbox_index = 2}, {type = "fluid", name = "light-oil", amount = 10, fluidbox_index = 3}}},
	{"natural-gas-distillation", "oil-processing", 12, false, {{type = "fluid", name = "natural-gas-desulf", amount = 100}}, {{type = "fluid", name = "light-oil", amount = 10, fluidbox_index = 1}, {type = "fluid", name = "ethylene", amount = 40, fluidbox_index = 2}, {type = "fluid", name = "methane", amount = 50, fluidbox_index = 3}}},
	{"light-oil-distillation", "oil-processing", 6, false, {{type = "fluid", name = "light-oil", amount = 50}}, {{type = "fluid", name = "btx", amount = 30, fluidbox_index = 1}, {type = "fluid", name = "light-aliphatic", amount = 20, fluidbox_index = 2}}},
	{"petroleum-gas-distillation", "oil-processing", 6, false, {{type = "fluid", name = "petroleum-gas", amount = 50}}, {{type = "fluid", name = "ethylene", amount = 30, fluidbox_index = 1}, {type = "fluid", name = "methane", amount = 20, fluidbox_index = 2}}},
	{"heavy-oil-cracking", "chemistry-2", 4, false, {{type = "fluid", name = "heavy-oil", amount = 80}, {type = "fluid", name = "water-distilled", amount = 60}}, {{type = "fluid", name = "light-oil", amount = 60}, {type = "fluid", name = "steam", amount = 40, temperature = 315}}},--1--{"aluminum-hydroxide", 1}, 
	{"light-oil-cracking", "chemistry-2", 4, false, {{type = "fluid", name = "light-oil", amount = 60}, {type = "fluid", name = "water-distilled", amount = 60}}, {{type = "fluid", name = "petroleum-gas", amount = 40}, {type = "fluid", name = "steam", amount = 40, temperature = 315}}},--1--{"aluminum-hydroxide", 1}, 
	{"reform-btx", "chemistry-2", 5, false, {{type = "fluid", name = "btx", amount = 30}, {type = "fluid", name = "hydrogen", amount = 10}}, {{type = "fluid", name = "light-aliphatic", amount = 40}}},--1
	{"reform-light-aliphatic", "chemistry-2", 5, false, {{type = "fluid", name = "light-aliphatic", amount = 40}}, {{type = "fluid", name = "btx", amount = 30}, {type = "fluid", name = "hydrogen", amount = 10}}},--1
	{"reform-ethylene", "chemistry-2", 5, false, {{type = "fluid", name = "ethylene", amount = 30}, {type = "fluid", name = "hydrogen", amount = 10}}, {{type = "fluid", name = "methane", amount = 40}}},--1
	{"reform-methane", "chemistry-2", 5, false, {{type = "fluid", name = "methane", amount = 40}}, {{type = "fluid", name = "ethylene", amount = 30}, {type = "fluid", name = "hydrogen", amount = 10}}},--1
	{"lubricant", "chemistry", 6, false, {{type = "fluid", name = "heavy-oil", amount = 30}, {"graphite", 1}}, {{type = "fluid", name = "lubricant", amount = 40}}},--1
}

xm_fluids_recipes["fluid-organic"] = {
	{"formaldehyde-0", "chemistry", 2, false, {{"coke", 1}, {type = "fluid", name = "steam", amount = 10}}, {{type = "fluid", name = "formaldehyde", amount = 10}}},
	{"formaldehyde-1", "chemistry", 2, false, {{type = "fluid", name = "carbon-monoxide", amount = 10}, {type = "fluid", name = "hydrogen", amount = 10}}, {{type = "fluid", name = "formaldehyde", amount = 20}}},
	{"epichlorohydrin", "chemistry-2", 4, false, {{type = "fluid", name = "ethylene", amount = 40}, {type = "fluid", name = "chlorine", amount = 10}}, {{type = "fluid", name = "epichlorohydrin", amount = 50}}},
	{"amine", "chemistry-2", 10, false, {{type = "fluid", name = "ethylene", amount = 10}, {type = "fluid", name = "ammonia", amount = 10}}, {{type = "fluid", name = "amine", amount = 20}}},
	{"epoxide", "chemistry-2", 4, false, {{"aromatic", 1}, {type = "fluid", name = "epichlorohydrin", amount = 5}}, {{type = "fluid", name = "epoxide", amount = 15}}},
	{"uncured-phenolic", "chemistry", 1, false, {{"phenol", 1}, {type = "fluid", name = "formaldehyde", amount = 10}}, {{type = "fluid", name = "uncured-phenolic", amount = 20}}},--1
	{"uncured-epoxy", "chemistry-2", 2.25, false, {{type = "fluid", name = "epoxide", amount = 20}, {type = "fluid", name = "amine", amount = 10}}, {{type = "fluid", name = "uncured-epoxy", amount = 30}}},--1
}

xm_all_recipes_to_impose["fluids"] = xm_fluids_recipes




--==========  INTERMEDIATE PRODUCTS  ==========
local xm_intermediate_products_recipes = {}

xm_intermediate_products_recipes["mechanical"] = {
	{"iron-stick", "machine-0", 1, true, {{"iron-plate", 1}}, {{"iron-stick", 2}}},--0.5
	{"steel-rod", "machine-1", 1, false, {{"steel-plate", 1}}, {{"steel-rod", 4}}},--0.5
	{"iron-gear-wheel", "machine-0", 2, true, {{"stock-cast-iron", 3}}, {{"iron-gear-wheel", 1}}},--2
	{"iron-gear-1", "machine-1", 2, false, {{"stock-cast-iron", 2}}, {{"iron-gear-wheel", 1}}},--2
	{"parts-steel", "machine-1", 7.5, false, {{"steel-plate", 2}, {"stock-bronze", 1}}, {{"parts-steel", 5}}},--1
	{"parts-alloy", "machine-1", 8, false, {{"stock-alloy", 3}, {"rubber-vulcanized", 1}, {type = "fluid", name = "lubricant", amount = 10}}, {{"parts-alloy", 2}}},--4
	--XX{"parts-ceramic", "machine-1", 5, false, {{"stock-alloy", 1}, {"silicon-nitride", 8}, {"plastic-bar", 2}, {type = "fluid", name = "lubricant", amount = 10}}, {{"parts-ceramic", 2}}},--6
}

xm_intermediate_products_recipes["electrical"] = {
	{"copper-cable", "machine-0", 1, false, {{"copper-plate", 1}}, {{"copper-cable", 1}}},--1
	{"copper-cable-1", "machine-1", 1, false, {{"copper-plate", 1}, {type = "fluid", name = "uncured-phenolic", amount = 2}}, {{"copper-cable", 2}}},--0.6
	{"copper-cable-2", "machine-1", 10, false, {{"copper-plate", 18}, {"rubber-vulcanized", 1}, {type = "fluid", name = "uncured-epoxy", amount = 10}}, {{"copper-cable", 40}}},--0.5
	{"coil-1-0", "basic-crafting", 1.5, false, {{"iron-stick", 1}, {"copper-cable", 3}}, {{"coil-1", 1}}},--2
	{"coil-1-1", "crafting", 1, false, {{"steel-rod", 1}, {"copper-cable", 3}}, {{"coil-1", 1}}},--2
	{"coil-2-0", "crafting", 1.5, false, {{"steel-rod", 2}, {"copper-cable", 4}}, {{"coil-2", 1}}},--3
	{"coil-2-1", "crafting-with-fluid", 1.25, false, {{"steel-rod", 2}, {"copper-cable", 3}, {type = "fluid", name = "uncured-epoxy", amount = 5}}, {{"coil-2", 1}}},--3
	{"coil-3", "crafting-with-fluid", 3.2, false, {{"steel-rod", 4}, {"copper-cable", 8}, {"wafer-0", 1}, {type = "fluid", name = "uncured-epoxy", amount = 10}}, {{"coil-3", 2}}},--4
	{"wire-solder-0", "machine-0", 3, false, {{"solder", 3}, {"resin", 1}}, {{"wire-solder", 6}}},--0.5(1/24)
	{"wire-solder-1", "machine-1", 2, false, {{"solder", 2}, {"phenol", 1}}, {{"wire-solder", 4}}},--0.5
	{"wire-gold", "machine-1", 1, false, {{"gold", 1}}, {{"wire-gold", 2}}},--0.5
	{"battery", "crafting-with-fluid", 4, false, {{"lead", 2}, {"glass", 1}, {type = "fluid", name = "sulfuric-acid", amount = 10}}, {{"battery", 1}}},--4
}

xm_intermediate_products_recipes["data"] = {
	{"laminate-1", "machine-1", 1, false, {{"copper-plate", 1}, {"fiber-glass", 1}, {type = "fluid", name = "uncured-phenolic", amount = 5}}, {{"laminate-1", 2}}},--1
	{"laminate-2", "machine-1", 0.8, false, {{"copper-plate", 2}, {"fiber-glass", 1}, {type = "fluid", name = "uncured-epoxy", amount = 5}}, {{"laminate-2", 1}}},--3
	{"board-1-0", "machine-0", 2, false, {{"wood", 1}, {"copper-cable", 12}}, {{"board-1", 4}}},--1.5(1/4)
	{"board-1-1", "machine-1", 3, false, {{"steel-plate", 1}, {"copper-cable", 4}, {"porcelain", 1}}, {{"board-1", 4}}},--1.25
	{"board-1-2", "chemistry", 0.75, false, {{"laminate-1", 1}, {type = "fluid", name = "sulfuric-acid", amount = 1}}, {{"board-1", 1}}},--1.1 ~= 1
	{"board-2-0", "electrolysis-1", 1, false, {{"laminate-1", 2}, {"solder", 1}, {type = "fluid", name = "nitric-acid", amount = 3}}, {{"board-2", 1}}},--3.3 ~= 3
	{"board-3-0", "electrolysis-2", 3, false, {{"laminate-2", 2}, {"nickel", 1}, {"gold", 1}, {type = "fluid", name = "chlorine", amount = 6}}, {{"board-3", 2}}},--4
	{"wafer-0", "machine-1", 2, false, {{"silicon-boule", 1}, {type = "fluid", name = "sulfuric-acid", amount = 12}}, {{"wafer-0", 12}}},--1
	{"wafer-data-1", "crafting-with-fluid", 10, false, {{"wafer-0", 2}, {"tungsten", 1}, {"sodium-hydroxide", 1}, {type = "fluid", name = "nitric-acid", amount = 10}}, {{"wafer-data-1", 2}}},--1.5
	{"wafer-data-2", "chemistry-2", 10, false, {{"wafer-data-1", 2}, {"silicon", 1}, {"chromium", 1}, {type = "fluid", name = "carbon-monoxide", amount = 8}, {type = "fluid", name = "hydrogen-fluoride", amount = 12}}, {{"wafer-data-2", 1}}},--6
	{"wafer-solar", "machine-1", 4, false, {{"wafer-0", 2}, {"silver", 1}, {type = "fluid", name = "nitric-acid", amount = 5}}, {{"wafer-solar", 1}}},--3
	--XX{"wafer-doped", "chemistry", 2, false, {{"silicon-boule", 1}, {type = "fluid", name = "sulfuric-acid", amount = 3}, {type = "fluid", name = "uncured-epoxy", amount = 2}}, {{"wafer-doped", 2}}},--2.25 ~= 2
	--XX{"wafer-solar", "chemistry", 16, false, {{"wafer-doped", 4}, {"silver", 1}, {type = "fluid", name = "nitric-acid", amount = 8}}, {{"wafer-solar", 4}}},--2.25 ~= 2
	--XX{"wafer-integrated", "chemistry", 16, false, {{"wafer-doped", 3}, {"copper-plate", 1}, {"tungsten", 1}, {type = "fluid", name = "phosphine", amount = 3}, {type = "fluid", name = "hydrogen-fluoride", amount = 3}}, {{"wafer-integrated", 1}}},--8.6 ~= 8
	{"components-1-0", "basic-crafting", 1.5, false, {{"coil-1", 1}, {"coke", 1}, {"glass", 1}}, {{"components-1", 1}}},--4 --> 2.5
	{"components-1-1", "crafting-with-fluid", 2, false, {{"coil-1", 1}, {"graphite", 2}, {type = "fluid", name = "uncured-phenolic", amount = 10}}, {{"components-1", 2}}},--2.5
	{"components-2-0", "crafting", 3, false, {{"copper-cable", 3}, {"tungsten", 1}, {"glass", 1}}, {{"components-2", 1}}},--3.5
	{"components-2-1", "advanced-crafting", 2, false, {{"wafer-data-1", 1}, {"aluminum", 1}, {"wire-gold", 1}, {"pellets-polyethylene", 1}}, {{"components-2", 1}}},--3.5
	{"components-3-0", "advanced-crafting", 3, false, {{"wafer-data-2", 1}, {"copper-plate", 2}, {"wire-gold", 6}, {"pellets-nylon", 6}}, {{"components-3", 1}}},--14
	{"electronic-circuit", "crafting", 2, false, {{"board-1", 1}, {"components-1", 1}, {"wire-solder", 1}}, {{"electronic-circuit", 1}}},--5.5(1/4) --> 4
	{"advanced-circuit", "crafting", 6, false, {{"board-2", 1}, {"components-1", 1}, {"components-2", 1}, {"wire-solder", 2}}, {{"advanced-circuit", 1}}},--10 (3 + 2.5 + 3.5 + 1)
	{"processing-unit", "advanced-crafting", 12, false, {{"board-3", 2}, {"components-1", 4}, {"components-2", 4}, {"components-3", 2}, {"wire-solder", 8}}, {{"advanced-circuit", 1}}},--64 (3, 2.5, 3.5, 14, 0.5)
}

xm_intermediate_products_recipes["intermediate-product"] = {
	{"piston-unit-0", "basic-crafting", 3, true, {{"pipe", 2}, {"iron-stick", 2}, {"stock-bronze", 1}}, {{"piston-unit", 2}}},--2
	{"piston-unit-1", "crafting", 1.5, false, {{"pipe", 1}, {"parts-steel", 1}}, {{"piston-unit", 1}}},--2
	{"mechanical-steam-engine", "crafting", 1, true, {{"piston-unit", 2}, {"iron-gear-wheel", 1}, {"stock-cast-iron", 2}}, {{"mechanical-steam-engine", 1}}},--8
	{"engine-unit", "crafting", 12, false, {{"piston-unit", 2}, {"iron-gear-wheel", 1}, {"parts-steel", 2}, {"rubber-vulcanized", 2}}, {{"engine-unit", 2}}},--5
	{"electric-engine-unit", "crafting", 3, false, {{"coil-1", 1}, {"glass", 2}, {"stock-bronze", 2}}, {{"electric-engine-unit", 1}}},--6(1/72) --> 4
	{"motor-1-1", "crafting", 2, false, {{"coil-1", 1}, {"rubber-vulcanized", 1}, {"iron-gear-wheel", 1}}, {{"electric-engine-unit", 1}}},--4
	{"motor-2-0", "crafting", 3, false, {{"coil-2", 1}, {"plastic-bar", 1}, {"parts-steel", 2}}, {{"motor-2", 1}}},--6
	{"motor-3", "advanced-crafting", 6, false, {{"coil-3", 2}, {"stock-duralumin", 2}, {"parts-alloy", 1}}, {{"motor-3", 2}}},--8
	{"flying-robot-frame", "crafting", 16, false, {{"motor-2", 1}, {"battery", 3}, {"stock-duralumin", 4}, {"advanced-circuit", 1}}, {{"flying-robot-frame", 1}}},--36
	--{"flying-robot-frame-2", "advanced-crafting", 28, false, {{"motor-3", 2}, {"battery-2", 3}, {"low-density-structure", 4}, {"processing-unit", 1}}, {{"flying-robot-frame-2", 1}}},--80
	{"low-density-structure", "machine-1", 20, false, {{"stock-alloy", 5}, {"stock-duralumin", 8}, {"fiber-glass", 12}, {type = "fluid", name = "uncured-epoxy", amount = 40}}, {{"low-density-structure", 1}}},--36, base 37.6
	{"rocket-fuel", "chemistry", 30, false, {{type = "fluid", name = "methane", amount = 80}, {type = "fluid", name = "oxygen", amount = 160}}, {{"rocket-fuel", 1}}},--24, base 11
	--{"rocket-control-unit", "advanced-crafting", 20, false, {{"copper-cable", 32}, {"advanced-circuit", 4}, {"processing-unit", 1}}, {{"rocket-control-unit", 1}}},--120, base 123
	--{"rocket-mechanics", "advanced-crafting", 20, false, {{"stock-stainless", 32}, {"tungsten", 4}, {"parts-alloy", 1}, {"motor-3", 1}}, {{"rocket-mechanics", 1}}},--60
	--{"rocket-part", "rocket-building", 12, false, {{"low-density-structure", 10}, {"rocket-fuel", 20}, {"rocket-control-unit", 5}, {"rocket-mechanics", 5}}, {{"rocket-part", 1}}},--1800, base 1715
	--{"satellite", "advanced-crafting", 12, false, {{"low-density-structure", 100}, {"solar-panel", 100}, {"accumulator", 100}, {"radar", 5}, {"processing-unit", 100}, {"rocket-fuel", 50}}, {{"satellite", 1}}},--
}

xm_intermediate_products_recipes["science-pack"] = {
	{"crude-science-pack", "basic-crafting", 2, true, {{"stone-brick", 1}, {"stock-bronze", 1}}, {{"crude-science-pack", 1}}},--2
	{"automation-science-pack", "crafting", 4, false, {{"iron-gear-wheel", 1}, {"coil-1", 1}}, {{"automation-science-pack", 1}}},--4
	{"logistic-science-pack", "crafting", 6, false, {{"transport-belt", 1}, {"inserter", 1}}, {{"logistic-science-pack", 1}}},--8
	{"chemical-science-pack", "chemistry", 12, false, {{"engine-unit", 2}, {"glass", 4}, {type = "fluid", name = "hydrogen-fluoride", amount = 20}, {"phenol", 8}}, {{"chemical-science-pack", 1}}},--24
	{"production-science-pack", "advanced-crafting", 24, false, {{"xm-furnace-electric", 1}, {"productivity-module", 2}, {"rail", 20}}, {{"production-science-pack", 3}}},--96 (288 per 3)
	{"utility-science-pack", "advanced-crafting", 24, false, {{"low-density-structure", 2}, {"processing-unit", 2}, {"flying-robot-frame", 2}, {"coil-3", 4}}, {{"utility-science-pack", 3}}},--96 (288 per 3)
}

xm_all_recipes_to_impose["intermediate-products"] = xm_intermediate_products_recipes




--==========  PRODUCTION  ==========
local xm_production_recipes = {}

xm_production_recipes["tool"] = {
	{"repair-pack", "crafting", 2, false, {{"iron-gear-wheel", 1}, {"steel-plate", 1}, {"electronic-circuit", 2}}, {{"repair-pack", 1}}}--12
}

xm_production_recipes["energy"] = {
	{"boiler", "crafting", 1, true, {{"xm-furnace-brick", 1}, {"pipe", 4}}, {{"boiler", 1}}},--16
	{"boiler-1", "crafting", 1, false, {{"boiler", 1}, {"stock-cupronickel", 8}, {"steel-plate", 4}}, {{"boiler-1", 1}}},--32
	--{"heat-exchanger", "crafting", 1, false, {{"boiler", 1}, {"stock-cupronickel", 8}, {"steel-plate", 4}}, {{"boiler-1", 1}}},--32
	{"steam-engine", "crafting", 1, false, {{"mechanical-steam-engine", 3}, {"electric-engine-unit", 3}}, {{"steam-engine", 1}}},--36
	{"steam-turbine", "crafting", 1, false, {{"stock-cast-iron", 16}, {"pipe", 8}, {"parts-steel", 24}, {"motor-2", 4}}, {{"steam-turbine", 1}}},--72
	--{"steam-turbine-2", "advanced-crafting", 1, false, {{"stock-stainless", 16}, {"pipe", 8}, {"parts-alloy", 24}, {"motor-3", 4}}, {{"steam-turbine", 1}}},--72
	{"solar-panel", "crafting", 10, false, {{"stock-duralumin", 10}, {"copper-cable", 16}, {"wafer-solar", 12}, {"glass", 8}}, {{"solar-panel", 1}}},--72
	{"solar-panel-2", "advanced-crafting", 32, false, {{"stock-stainless", 8}, {"glass", 24}, {"coil-3", 3}, {"advanced-circuit", 2}, {"solar-panel", 3}}, {{"solar-panel-2", 2}}},--144
	{"accumulator", "crafting", 10, false, {{"stock-cast-iron", 2}, {"battery", 5}, {"copper-cable", 4}}, {{"accumulator", 1}}},--24
	{"small-lamp", "crafting", 1, false, {{"iron-gear-wheel", 2}, {"glass", 2}, {"graphite", 3}, {"copper-cable", 2}}, {{"small-lamp", 1}}},--10
	{"small-lamp-1", "crafting", 1, false, {{"stock-cast-iron", 2}, {"glass", 1}, {"tungsten", 1}, {"copper-cable", 2}}, {{"small-lamp", 1}}},--5
}

xm_production_recipes["extraction-machine"] = {
	{"offshore-pump", "basic-crafting", 0.5, true, {{"mechanical-steam-engine", 1}, {"stone-brick", 4}, {"copper-plate", 8}}, {{"offshore-pump", 1}}},--20
	{"offshore-pump-1", "crafting", 0.5, false, {{"pump", 1}, {"brick-clay", 8}, {"stock-bronze", 8}}, {{"offshore-pump", 1}}},--24
	{"burner-mining-drill", "basic-crafting", 1, true, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"iron-plate", 4}}, {{"burner-mining-drill", 2}}},--16
	{"electric-mining-drill", "crafting", 2, false, {{"electric-engine-unit", 2}, {"iron-gear-wheel", 4}, {"steel-plate", 4}, {"electronic-circuit", 1}}, {{"electric-mining-drill", 1}}},--28
	{"electric-mining-drill-2", "crafting", 3, false, {{"electric-mining-drill", 1}, {"motor-2", 3}, {"parts-steel", 12}, {"stock-alloy", 8}, {"advanced-circuit", 1}}, {{"electric-mining-drill-2", 1}}},--84
	{"pumpjack", "crafting", 5, false, {{"electric-engine-unit", 3}, {"iron-gear-wheel", 4}, {"pipe", 16}, {"steel-plate", 8}, {"electronic-circuit", 2}}, {{"pumpjack", 1}}},--60
	{"ore-processor-0", "basic-crafting", 1, false, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"stone-brick", 8}, {"stock-bronze", 4}}, {{"ore-processor-0", 2}}},--18
	{"ore-processor-1", "crafting", 1.5, false, {{"pump", 1}, {"iron-gear-wheel", 4}, {"steel-plate", 2}, {"electronic-circuit", 1}}, {{"ore-processor-1", 1}}},--24
	{"ore-processor-2", "crafting", 3, false, {{"ore-processor-1", 1}, {"motor-2", 1}, {"parts-steel", 8}, {"stock-alloy", 6}, {"advanced-circuit", 1}}, {{"ore-processor-2", 1}}},--60
	{"waste-dump", "crafting", 6, false, {{"electric-mining-drill", 1}, {"gravel", 10}, {"pipe", 4}, {"transport-belt", 3}}, {{"waste-dump", 1}}},--48
}

xm_production_recipes["smelting-machine"] = {
	{"xm-furnace-stone", "basic-crafting", 1, true, {{"stone-brick", 5}}, {{"xm-furnace-stone", 1}}},--5
	{"xm-furnace-brick", "crafting", 2, true, {{"brick-clay", 8}, {"stock-bronze", 4}}, {{"xm-furnace-brick", 1}}},--12
	{"xm-furnace-steel", "crafting", 4, false, {{"brick-clay", 12}, {"steel-plate", 4}, {"pipe", 4}}, {{"xm-furnace-steel", 1}}},--24
	{"xm-furnace-electric", "crafting", 4, false, {{"coil-2", 6}, {"brick-magnesia", 20}, {"stock-cupronickel", 10}, {"electronic-circuit", 2}, {"xm-furnace-steel", 1}}, {{"xm-furnace-electric", 1}}},--100
	{"xm-furnace-plasma", "advanced-crafting", 4, false, {{"coil-3", 10}, {"graphite", 60}, {"stock-stainless", 24}, {"advanced-circuit", 4}, {"xm-furnace-electric", 1}}, {{"xm-furnace-plasma", 1}}},--288
}

xm_production_recipes["chemical-machine"] = {
	{"chemical-plant", "crafting", 3, false, {{"pump", 2}, {"copper-cable", 8}, {"glass", 8}, {"steel-plate", 2}}, {{"chemical-plant", 1}}},--32
	{"chem-reactor-2", "crafting", 4, false, {{"chemical-plant", 1}, {"motor-2", 2}, {"porcelain", 8}, {"stock-cupronickel", 8}, {"advanced-circuit", 2}}, {{"chem-reactor-2", 1}}},--80
	{"electrolyzer-1", "crafting", 4, false, {{"pump", 1}, {"coil-1", 2}, {"lead", 8}, {"glass", 4}}, {{"electrolyzer-1", 1}}},--24
	{"electrolyzer-2", "crafting", 6, false, {{"electrolyzer-1", 1}, {"coil-2", 4}, {"gold", 10}, {"plastic-bar", 16}, {"advanced-circuit", 1}}, {{"electrolyzer-2", 1}}},--72
	{"oil-refinery", "crafting", 8, false, {{"chemical-plant", 1}, {"xm-furnace-steel", 1}, {"pump", 3}, {"pipe", 32}, {"electronic-circuit", 8}}, {{"oil-refinery", 1}}}--144
	--{"chem-reactor-3", "advanced-crafting", 4, false, {{"chem-reactor-2", 1}, {"motor-2", 2}, {"porcelain", 8}, {"platinum", 10}, {"advanced-circuit", 1}}, {{"chem-reactor-3", 1}}},--160
}

xm_production_recipes["production-machine"] = {
	{"machine-tool-0", "basic-crafting", 1, false, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"stone-brick", 4}, {"stock-cast-iron", 8}}, {{"machine-tool-0", 2}}},--18
	{"machine-tool-1", "crafting", 1, false, {{"electric-engine-unit", 2}, {"steel-plate", 2}, {"iron-gear-wheel", 4}, {"electronic-circuit", 1}}, {{"machine-tool-1", 1}}},--24
	{"machine-tool-2", "crafting", 2, false, {{"machine-tool-1", 1}, {"motor-2", 2}, {"stock-alloy", 8}, {"parts-steel", 10}, {"advanced-circuit", 1}}, {{"machine-tool-2", 1}}},--72
	--{"machine-tool-3", "advanced-crafting"}
	{"assembling-machine-0", "basic-crafting", 1, false, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"burner-inserter", 2}, {"iron-gear-wheel", 4}}, {{"assembling-machine-0", 2}}},--18
	{"assembling-machine-1", "crafting", 2, false, {{"electric-engine-unit", 1}, {"inserter", 1}, {"iron-gear-wheel", 3}, {"electronic-circuit", 3}}, {{"assembling-machine-1", 1}}},--28
	{"assembling-machine-2", "crafting", 4, false, {{"assembling-machine-1", 1}, {"fast-inserter", 1}, {"motor-2", 2}, {"parts-steel", 8}, {"advanced-circuit", 2}}, {{"assembling-machine-2", 1}}},--80
	--{"assembling-machine-3", "advanced-crafting", 6, false, {{"assembling-machine-2", 1}, {"stack-filter-inserter", 1}, {"stock-stainless", 10}, {"parts-alloy", 5}, {"motor-3", 2}, {"processing-unit", 2}}, {{"assembling-machine-3", 1}}},--360
	{"lab-burner", "basic-crafting", 1, true, {{"boiler", 1}, {"mechanical-steam-engine", 1}, {"crude-transport-belt", 8}, {"copper-plate", 4}}, {{"lab-burner", 1}}},--36
	{"lab", "crafting", 2, false, {{"electric-engine-unit", 2}, {"steel-plate", 4}, {"iron-gear-wheel", 4}, {"transport-belt", 6}, {"electronic-circuit", 3}}, {{"lab", 1}}}--48
}

xm_production_recipes["module"] = {
	{"speed-module", "crafting", 15, false, {{"motor-2", 4}, {"electronic-circuit", 8}}, {{"speed-module", 1}}},--56 (base = 57.5)
	{"speed-module-2", "advanced-crafting", 30, false, {{"speed-module", 4}, {"stock-duralumin", 68}, {"advanced-circuit", 24}}, {{"speed-module-2", 1}}},--600 (base = 615)
	--{"speed-module-3", "advanced-crafting", 60, false, {{"speed-module-2", 5}, {"", 88} {"processing-unit", 8}}, {{"speed-module-3", 1}}},--3600 (base = 3460)
	{"productivity-module", "crafting", 15, false, {{"fast-transport-belt", 3}, {"electronic-circuit", 8}}, {{"productivity-module", 1}}},--56 (base = 57.5)
	{"productivity-module-2", "advanced-crafting", 30, false, {{"productivity-module", 4}, {"plastic-bar", 136}, {"advanced-circuit", 24}}, {{"productivity-module-2", 1}}},--600 (base = 615)
	--{"productivity-module-3", "advanced-crafting", 60, false, {{"productivity-module-2", 5}, {"stack-filter-inserter", }, {"processing-unit", 8}}, {{"productivity-module-3", 1}}},--3600 (base = 3460)
	{"effectivity-module", "crafting", 15, false, {{"fiber-glass", 48}, {"electronic-circuit", 8}}, {{"effectivity-module", 1}}},--56 (base = 57.5)
	{"effectivity-module-2", "advanced-crafting", 30, false, {{"effectivity-module", 4}, {"parts-alloy", 34}, {"advanced-circuit", 24}}, {{"effectivity-module-2", 1}}},--600 (base = 615)
	--{"effectivity-module-3", "advanced-crafting", 60, false, {{"effectivity-module-2", 5}, {"substation?", 88} {"processing-unit", 8}}, {{"effectivity-module-3", 1}}},--3600 (base = 3460)
}

xm_all_recipes_to_impose["production"] = xm_production_recipes




--==========  LOGISTICS  ==========
local xm_logistics_recipes = {}

xm_logistics_recipes["belt"] = {
	{"crude-transport-belt", "basic-crafting", 1, true, {{"iron-plate", 2}, {"iron-gear-wheel", 1}}, {{"crude-transport-belt", 4}}},--1
	{"transport-belt", "crafting", 2, false, {{"steel-plate", 2}, {"iron-gear-wheel", 1}, {"stock-bronze", 2}}, {{"transport-belt", 4}}},--2
	{"fast-transport-belt", "crafting", 1.5, false, {{"transport-belt", 1}, {"parts-steel", 4}, {"rubber-vulcanized", 2}}, {{"fast-transport-belt", 1}}},--8
	{"crude-underground-belt", "basic-crafting", 1, true, {{"crude-transport-belt", 4}, {"stone-brick", 4}}, {{"crude-underground-belt", 2}}},--8 per pair
	{"underground-belt", "crafting", 1, false, {{"transport-belt", 6}, {"brick-clay", 4}, {"stock-bronze", 4}}, {{"underground-belt", 2}}},--20 per pair
	{"fast-underground-belt", "crafting", 3, false, {{"underground-belt", 2}, {"fast-transport-belt", 8}, {"concrete", 8}, {"steel-plate", 4}}, {{"fast-underground-belt", 2}}},--100 per pair
	{"crude-splitter", "basic-crafting", 1, true, {{"crude-transport-belt", 3}, {"iron-gear-wheel", 1}, {"stock-bronze", 1}}, {{"crude-splitter", 1}}},--6
	{"splitter", "crafting", 1, false, {{"transport-belt", 4}, {"iron-gear-wheel", 4}, {"stock-bronze", 4}}, {{"splitter", 1}}},--20
	{"fast-splitter", "crafting", 3, false, {{"splitter", 1}, {"fast-transport-belt", 4}, {"parts-steel", 8}, {"electronic-circuit", 3}}, {{"fast-splitter", 1}}},--72
}

xm_logistics_recipes["inserter"] = {
	{"burner-inserter", "basic-crafting", 0.5, true, {{"piston-unit", 1}, {"iron-gear-wheel", 1}}, {{"burner-inserter", 1}}},--4
	{"inserter", "basic-crafting", 1, false, {{"electric-engine-unit", 1}, {"iron-gear-wheel", 1}, {"copper-plate", 3}}, {{"inserter", 1}}},--9
	{"inserter-1", "crafting", 2, false, {{"electric-engine-unit", 1}, {"iron-gear-wheel", 2}, {"electronic-circuit", 1}}, {{"inserter", 2}}},--6
	{"long-handed-inserter", "crafting", 0.5, false, {{"inserter", 1}, {"iron-gear-wheel", 1}, {"steel-plate", 1}}, {{"long-handed-inserter", 1}}},--10
	{"fast-inserter", "crafting", 1, false, {{"inserter", 1}, {"parts-steel", 2}, {"electronic-circuit", 1}}, {{"fast-inserter", 1}}},--12
	{"long-fast-inserter", "crafting", 0.5, false, {{"fast-inserter", 1}, {"steel-plate", 2}}, {{"long-fast-inserter", 1}}},--16
	{"filter-inserter", "crafting", 0.5, false, {{"fast-inserter", 1}, {"electronic-circuit", 3}}, {{"filter-inserter", 1}}},--24
	{"stack-inserter", "crafting", 1, false, {{"fast-inserter", 1}, {"stock-duralumin", 10}, {"parts-alloy", 3}, {"advanced-circuit", 4}}, {{"stack-inserter", 1}}},--84
	{"stack-filter-inserter", "crafting", 0.5, false, {{"stack-inserter", 1}, {"electronic-circuit", 3}}, {{"stack-filter-inserter", 1}}},--96
}

xm_logistics_recipes["energy-pipe-distribution"] = {
	{"pipe", "machine-0", 0.5, true, {{"iron-plate", 1}}, {{"pipe", 1}}},--1
	{"pipe-1", "machine-1", 0.5, false, {{"steel-plate", 1}}, {{"pipe", 2}}},--1
	{"pipe-to-ground", "crafting", 1, true, {{"pipe", 10}, {"stock-cast-iron", 6}}, {{"pipe-to-ground", 2}}},--16 per pair
	{"storage-tank", "crafting", 3, false, {{"steel-plate", 10}, {"pipe", 12}}, {{"storage-tank", 1}}},--32
	{"pump", "crafting", 1, false, {{"electric-engine-unit", 1}, {"piston-unit", 2}, {"iron-gear-wheel", 1}, {"stock-bronze", 2}}, {{"pump", 1}}},--12
	{"pump-1", "crafting", 1, false, {{"electric-engine-unit", 1}, {"piston-unit", 1}, {"rubber-vulcanized", 2}}, {{"pump", 1}}},--8
	{"small-electric-pole", "basic-crafting", 1, false, {{"wood", 1}, {"glass", 2}, {"copper-cable", 4}}, {{"small-electric-pole", 4}}},--1(13/48)
	{"medium-electric-pole", "crafting", 1, false, {{"steel-plate", 3}, {"steel-rod", 4}, {"glass", 2}, {"copper-cable", 4}}, {{"medium-electric-pole", 1}}},--12
	{"big-electric-pole", "crafting", 2, false, {{"steel-plate", 8}, {"steel-rod", 8}, {"porcelain", 3}, {"copper-cable", 12}}, {{"big-electric-pole", 1}}},--32
	{"big-electric-pole-2", "crafting", 2, false, {{"big-electric-pole", 1}, {"stock-stainless", 12}, {"porcelain", 4}, {"copper-cable", 16}}, {{"big-electric-pole", 1}}},--72
	{"substation", "crafting", 2, false, {{"medium-electric-pole", 2}, {"coil-2", 8}, {"porcelain", 4}, {"advanced-circuit", 4}}, {{"substation", 1}}},--96
}

xm_logistics_recipes["transport"] = {
	{"rail", "crafting", 0.5, false, {{"gravel", 2}, {"wood", 1}, {"steel-plate", 1}}, {{"rail", 1}}},--4 + (1)
	{"rail-1", "crafting", 0.5, false, {{"gravel", 2}, {"concrete", 1}, {"steel-plate", 2}}, {{"rail", 2}}},--4
	{"locomotive", "crafting", 8, false, {{"boiler", 1}, {"piston-unit", 8}, {"iron-gear-wheel", 12}, {"pipe", 28}, {"steel-plate", 12}, {"electronic-circuit", 3}}, {{"locomotive", 1}}},--120
	{"locomotive-1", "crafting", 8, false, {{"engine-unit", 16}, {"motor-2", 8}, {"parts-alloy", 10}, {"steel-plate", 15}, {"advanced-circuit", 5}}, {{"locomotive-1", 1}}},--248
	{"cargo-wagon", "crafting", 4, false, {{"iron-gear-wheel", 12}, {"parts-steel", 12}, {"steel-plate", 8}}, {{"cargo-wagon", 1}}},--60
	{"fluid-wagon", "crafting", 4, false, {{"iron-gear-wheel", 10}, {"parts-steel", 12}, {"storage-tank", 1}}, {{"fluid-wagon", 1}}},--64
	{"rail-signal", "crafting", 1, false, {{"electronic-circuit", 1}, {"small-lamp", 1}}, {{"rail-signal", 2}}},--8
	{"rail-chain-signal", "crafting", 1, false, {{"electronic-circuit", 1}, {"small-lamp", 1}}, {{"rail-chain-signal", 2}}},--8
	{"train-stop", "crafting", 2, false, {{"stock-cast-iron", 10}, {"steel-rod", 16}, {"parts-steel", 6}, {"electronic-circuit", 3}}, {{"train-stop", 1}}},--36
	{"car", "crafting", 4, false, {{"engine-unit", 8}, {"iron-gear-wheel", 8}, {"steel-plate", 20}, {"rubber-vulcanized", 8}, {"glass", 8}, {"electronic-circuit", 2}}, {{"car", 1}}},--120
}

xm_logistics_recipes["logistic-network"] = {
	{"roboport", "crafting", 8, false, {{"stock-duralumin", 88}, {"parts-steel", 100}, {"coil-2", 32}, {"radar", 4}, {"advanced-circuit", 30}}, {{"roboport", 1}}},--800
	{"construction-robot", "crafting", 1, false, {{"flying-robot-frame", 1}, {"stock-alloy", 2}}, {{"construction-robot", 1}}},--40
	{"logistic-robot", "crafting", 1, false, {{"flying-robot-frame", 1}, {"plastic-bar", 4}}, {{"logistic-robot", 1}}},--40
}

xm_all_recipes_to_impose["logistics"] = xm_logistics_recipes




--==========  COMBAT  ==========
local xm_combat_recipes = {}

xm_combat_recipes["gun"] = {
	{"pistol", "basic-crafting", 2, false, {{"iron-plate", 8}, {"stock-bronze", 4}}, {{"pistol", 1}}},--12
	{"submachine-gun", "crafting", 10, false, {{"steel-plate", 8}, {"iron-gear-wheel", 6}, {"stock-bronze", 8}}, {{"submachine-gun", 1}}},--36
	{"shotgun", "crafting", 10, false, {{"steel-plate", 6}, {"iron-gear-wheel", 4}, {"stock-bronze", 16}}, {{"shotgun", 1}}},--36
	{"combat-shotgun", "crafting", 10, false, {{"parts-steel", 24}, {"parts-alloy", 12}, {"plastic-bar", 24}}, {{"combat-shotgun", 1}}},--96
	{"flamethrower", "crafting", 10, false, {{"parts-steel", 24}, {"stock-cupronickel", 12}}, {{"flamethrower", 1}}},--36
	{"land-mine", "crafting", 5, false, {{"steel-plate", 2}, {"explosives", 2}}, {{"land-mine", 4}}},--2 (8 per recipe)
}

xm_combat_recipes["ammo"] = {
	{"firearm-magazine", "crafting", 1, false, {{"stock-bronze", 1}, {"lead", 1}, {"gunpowder", 1}}, {{"firearm-magazine", 1}}},--3(1/24) -> 3
	{"piercing-rounds-magazine", "crafting", 3, false, {{"stock-bronze", 3}, {"steel-plate", 3}, {"gunpowder", 3}}, {{"piercing-rounds-magazine", 1}}},--12
	{"shotgun-shell", "crafting", 3, false, {{"stock-bronze", 1}, {"lead", 2}, {"gunpowder", 1}}, {{"shotgun-shell", 1}}},--4(1/24) -> 4
	{"piercing-shotgun-shell", "crafting", 8, false, {{"stock-bronze", 5}, {"steel-plate", 5}, {"gunpowder", 5}}, {{"piercing-shotgun-shell", 1}}},--20
	{"flamethrower-ammo", "crafting-with-fluid", 6, false, {{"steel-plate", 8}, {type = "fluid", name = "crude-oil", amount = 200}}, {{"flamethrower-ammo", 1}}},--36
}

xm_combat_recipes["capsule"] = {
	{"grenade", "crafting", 8, false, {{"stock-cast-iron", 8}, {"gunpowder", 8}}, {{"grenade", 1}}},--16
	{"grenade-1", "crafting", 8, false, {{"stock-cast-iron", 8}, {"explosives", 4}}, {{"grenade", 1}}},--16
	{"cluster-grenade", "crafting", 8, false, {{"grenade", 7}, {"explosives", 12}, {"tungsten", 12}}, {{"cluster-grenade", 1}}},--136
	--{"first-aid", "chemistry", 6, false, {{"phenol", 1}, {"nitrated-organics", 1}, {type = "fluid", name = "hydrogen", amount = 10}, {type = "fluid", name = "sulfuric-acid", amount = 30}}, {{"first-aid", 1}}},
}

xm_combat_recipes["armor"] = {
	{"light-armor", "basic-crafting", 4, false, {{"iron-plate", 36}}, {{"light-armor", 1}}},--36
	{"heavy-armor", "crafting", 4, false, {{"steel-plate", 90}, {"stock-bronze", 60}}, {{"heavy-armor", 1}}},--240
	{"modular-armor", "crafting", 20, false, {{"stock-duralumin", 100}, {"parts-alloy", 30}, {"plastic-bar", 100}, {"advanced-circuit", 18}}, {{"modular-armor", 1}}}--600
}

xm_combat_recipes["defensive-structure"] = {
	{"gun-turret", "crafting", 8, false, {{"iron-plate", 8}, {"iron-gear-wheel", 10}, {"stock-bronze", 8}}, {{"gun-turret", 1}}},--36
	{"gun-turret-2", "crafting", 20, false, {{"iron-gear-wheel", 15}, {"parts-steel", 48}, {"plastic-bar", 18}}, {{"gun-turret-2", 1}}},--96
	{"flamethrower-turret", "crafting", 20, false, {{"parts-steel", 160}, {"engine-unit", 8}, {"pipe", 20}, {"stock-cupronickel", 20}}, {{"flamethrower-turret", 1}}},--240
	{"radar", "crafting", 1, false, {{"steel-plate", 4}, {"iron-gear-wheel", 4}, {"copper-cable", 16}, {"electronic-circuit", 2}}, {{"radar", 1}}}--32
}

xm_all_recipes_to_impose["combat"] = xm_combat_recipes