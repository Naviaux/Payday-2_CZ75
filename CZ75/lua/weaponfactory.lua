Hooks:PostHook(WeaponFactoryTweakData, "init", "cz75_factory", function(self)
	self.parts.cz75_lower_reciever = {
		type = "lower_reciever",
		name_id = "cz75_standard_lr",
		a_obj = "a_body",
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_body_frame",
		third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_body_standard",
		stats = { value = 1 }
	}
	self.parts.cz75_slide = {
		type = "slide",
		name_id = "cz75_standard_slide",
		a_obj = "a_b",
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_b_standard",
		third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_b_standard",
		stats = { value = 1 },
		animations = {reload = "reload", fire = "recoil"}
	}
	self.parts.cz75_magazine_12r = {
		type = "magazine",
		name_id = "cz75_standard_magazine_12r",
		a_obj = "a_m",
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_m_mag_17rnd",
		third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_m_mag_17rnd",
		stats = {value = 1},
		animations = {
			reload = "reload",
			reload_not_empty = "reload_not_empty"
		}
	}
	self.parts.cz75_magazine_foregrip = {
		pcs = {},
		type = "foregrip",
		name_id = "cz75_magazine_foregrip",
		a_obj = "a_fg",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		dlc = "pd2_clan",
		is_a_unlockable = true,
		stats = {
			spread = 1,
			spread_moving = 1,
			recoil = 2,
			concealment = -1,
			value = 2
		},
		custom_stats = {
			reload_speed_mult = 0.2
		},
		alt_icon = "guis/textures/pd2/blackmarket/icons/deployables/ammo_bag",
		internal_part = true
	}
	self.cz75 = {}
	self.cz75.unit = "units/payday2/weapons/wpn_fps_pis_g18c/wpn_fps_pis_g18c"
	self.cz75.optional_types = {
		"foregrip"
	}
	self.cz75.default_blueprint = {
		"cz75_lower_reciever",
		"cz75_slide",
		"cz75_magazine_12r"
	}
	self.cz75.uses_parts = {
		"cz75_lower_reciever",
		"cz75_slide",
		"cz75_magazine_12r",
		"cz75_magazine_foregrip"
	}
end)