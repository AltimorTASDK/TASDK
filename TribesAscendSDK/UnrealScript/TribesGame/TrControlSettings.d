module UnrealScript.TribesGame.TrControlSettings;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrControlSettings : GFxObject
{
	public @property final auto ref GFxObject m_ControlSettingsList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int m_ControlSettingsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	final float GetCurrentControlValue(TrObject.ESettingsList Index)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58463], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void FlushSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78165], cast(void*)0, cast(void*)0);
	}
	final void StoreSetting(int SettingId, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78166], params.ptr, cast(void*)0);
	}
	final int ReadSetting(int SettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78169], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void ReadSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78172], cast(void*)0, cast(void*)0);
	}
	final void LoadControlSettings(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78175], params.ptr, cast(void*)0);
	}
	final void AddControlSetting(ScriptString ControlName, float val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ControlName;
		*cast(float*)&params[12] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78180], params.ptr, cast(void*)0);
	}
	final void SaveControlSetting(int Index, float val, bool bStore)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = val;
		*cast(bool*)&params[8] = bStore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78184], params.ptr, cast(void*)0);
	}
	final TrObject.ESettingsList GetControlTypeFromName(ScriptString ControlName)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ControlName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78192], params.ptr, cast(void*)0);
		return *cast(TrObject.ESettingsList*)&params[12];
	}
	final ScriptString GetControlNameFromType(TrObject.ESettingsList Index)
	{
		ubyte params[13];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78195], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final PlayerInput GetPlayerInput()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78198], params.ptr, cast(void*)0);
		return *cast(PlayerInput*)params.ptr;
	}
	final void UpdateRuntimePlayer(PlayerInput EngineInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = EngineInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78201], params.ptr, cast(void*)0);
	}
	final void SaveTinyWeaponValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78204], params.ptr, cast(void*)0);
	}
	final bool GetTinyWeaponValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78206], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool GetAlienFXValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78208], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SaveAlienFXValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78210], params.ptr, cast(void*)0);
	}
	final void SaveChatFilterValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78212], params.ptr, cast(void*)0);
	}
	final bool GetChatFilterValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78214], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SaveHUDFriendStateNotificationsValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78216], params.ptr, cast(void*)0);
	}
	final bool GetHUDFriendStateNotifications()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78218], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SaveWhisperNotificationsValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78220], params.ptr, cast(void*)0);
	}
	final int GetWhisperNotificationsValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78222], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void SaveHelpTextValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78224], params.ptr, cast(void*)0);
	}
	final bool GetHelpTextValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78229], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SaveSimulatedProjectilesValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78231], params.ptr, cast(void*)0);
	}
	final bool GetSimulatedProjectilesValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78233], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SaveDamageCounterValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78235], params.ptr, cast(void*)0);
	}
	final bool GetDamageCounterValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78237], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SaveHUDObjectivesValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78239], params.ptr, cast(void*)0);
	}
	final bool GetHUDObjectivesValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78241], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
