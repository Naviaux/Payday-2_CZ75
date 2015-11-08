local _old_stats = NewRaycastWeaponBase._update_stats_values
function NewRaycastWeaponBase:_update_stats_values()
	_old_stats(self)
	
	self._reload_speed_mult = self:weapon_tweak_data().reload_speed_mult or 1
	
	local custom_stats = managers.weapon_factory:get_custom_stats_from_weapon(self._factory_id, self._blueprint)
	for part_id, stats in pairs(custom_stats) do
		if stats.reload_speed_mult then
			self._reload_speed_mult = self._reload_speed_mult * stats.reload_speed_mult
		end
	end
end