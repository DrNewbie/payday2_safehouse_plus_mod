core:import("CoreMissionScriptElement")
ElementModifyPlayer = ElementModifyPlayer or class(CoreMissionScriptElement.MissionScriptElement)

_G.SafeHousePlus = _G.SafeHousePlus or {}
SafeHousePlus = _G.SafeHousePlus

function ElementModifyPlayer:on_executed(instigator)
	if not self._values.enabled then
		return
	end
	if alive(instigator) then
		if SafeHousePlus.settings.enable_self_damage == 0 then
			instigator:character_damage():set_mission_damage_blockers("damage_fall_disabled", self._values.damage_fall_disabled)
			instigator:character_damage():set_mission_damage_blockers("invulnerable", self._values.invulnerable)
		end
	end
	ElementModifyPlayer.super.on_executed(self, instigator)
end