module UnrealScript.TribesGame.TrHUDSettings;

import ScriptClasses;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrHUDSettings : GFxObject
{
public extern(D):
	enum EHUDSettingType : ubyte
	{
		EHST_HEROTEXT = 0,
		EHST_COMBATLOG = 1,
		EHST_CREDITS = 2,
		EHST_CHAT = 3,
		EHST_SCORES = 4,
		EHST_ACCOLADES = 5,
		EHST_BADGES = 6,
		EHST_VISOR = 7,
		EHST_KILLBOX = 8,
		EHST_DEATHCAM = 9,
		EHST_PROMPTPANEL = 10,
		EHST_RESPAWNTIMER = 11,
		EHST_HEALTHBAR = 12,
		EHST_RETICULE = 13,
		EHST_SKIBARS = 14,
		EHST_FRIENDCOLOR = 15,
		EHST_CRACKS = 16,
		EHST_MAX = 17,
	}
	@property final auto ref
	{
		int SettingsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
		GFxObject SettingsList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 124); }
	}
final:
	float GetCurrentValue(TrHUDSettings.EHUDSettingType Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHUDSettings.EHUDSettingType*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59226], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void SaveSetting(int Index, float val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96612], params.ptr, cast(void*)0);
	}
}
