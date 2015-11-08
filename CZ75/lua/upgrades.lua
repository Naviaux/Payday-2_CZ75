Hooks:PostHook(UpgradesTweakData, "init", "cz75_upgrades", function(self) 
	table.insert(self.level_tree[36].upgrades, "cz75")
	self:_cz75_definitions()
end)

function UpgradesTweakData:_cz75_definitions()
	self.definitions.cz75 = {
		category = "weapon",
		weapon_id = "cz75",
		factory_id = "cz75"
	}
	self.definitions.cz75_primary = {
		category = "weapon",
		weapon_id = "cz75_primary",
		factory_id = "cz75_primary"
	}
end