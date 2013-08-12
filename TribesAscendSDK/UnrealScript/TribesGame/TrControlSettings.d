module UnrealScript.TribesGame.TrControlSettings;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrControlSettings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrControlSettings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCurrentControlValue;
			ScriptFunction mFlushSettings;
			ScriptFunction mStoreSetting;
			ScriptFunction mReadSetting;
			ScriptFunction mReadSettings;
			ScriptFunction mLoadControlSettings;
			ScriptFunction mAddControlSetting;
			ScriptFunction mSaveControlSetting;
			ScriptFunction mGetControlTypeFromName;
			ScriptFunction mGetControlNameFromType;
			ScriptFunction mGetPlayerInput;
			ScriptFunction mUpdateRuntimePlayer;
			ScriptFunction mSaveTinyWeaponValue;
			ScriptFunction mGetTinyWeaponValue;
			ScriptFunction mGetAlienFXValue;
			ScriptFunction mSaveAlienFXValue;
			ScriptFunction mSaveChatFilterValue;
			ScriptFunction mGetChatFilterValue;
			ScriptFunction mSaveHUDFriendStateNotificationsValue;
			ScriptFunction mGetHUDFriendStateNotifications;
			ScriptFunction mSaveWhisperNotificationsValue;
			ScriptFunction mGetWhisperNotificationsValue;
			ScriptFunction mSaveHelpTextValue;
			ScriptFunction mGetHelpTextValue;
			ScriptFunction mSaveSimulatedProjectilesValue;
			ScriptFunction mGetSimulatedProjectilesValue;
			ScriptFunction mSaveDamageCounterValue;
			ScriptFunction mGetDamageCounterValue;
			ScriptFunction mSaveHUDObjectivesValue;
			ScriptFunction mGetHUDObjectivesValue;
		}
		public @property static final
		{
			ScriptFunction GetCurrentControlValue() { return mGetCurrentControlValue ? mGetCurrentControlValue : (mGetCurrentControlValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetCurrentControlValue")); }
			ScriptFunction FlushSettings() { return mFlushSettings ? mFlushSettings : (mFlushSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.FlushSettings")); }
			ScriptFunction StoreSetting() { return mStoreSetting ? mStoreSetting : (mStoreSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.StoreSetting")); }
			ScriptFunction ReadSetting() { return mReadSetting ? mReadSetting : (mReadSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.ReadSetting")); }
			ScriptFunction ReadSettings() { return mReadSettings ? mReadSettings : (mReadSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.ReadSettings")); }
			ScriptFunction LoadControlSettings() { return mLoadControlSettings ? mLoadControlSettings : (mLoadControlSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.LoadControlSettings")); }
			ScriptFunction AddControlSetting() { return mAddControlSetting ? mAddControlSetting : (mAddControlSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.AddControlSetting")); }
			ScriptFunction SaveControlSetting() { return mSaveControlSetting ? mSaveControlSetting : (mSaveControlSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveControlSetting")); }
			ScriptFunction GetControlTypeFromName() { return mGetControlTypeFromName ? mGetControlTypeFromName : (mGetControlTypeFromName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetControlTypeFromName")); }
			ScriptFunction GetControlNameFromType() { return mGetControlNameFromType ? mGetControlNameFromType : (mGetControlNameFromType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetControlNameFromType")); }
			ScriptFunction GetPlayerInput() { return mGetPlayerInput ? mGetPlayerInput : (mGetPlayerInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetPlayerInput")); }
			ScriptFunction UpdateRuntimePlayer() { return mUpdateRuntimePlayer ? mUpdateRuntimePlayer : (mUpdateRuntimePlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.UpdateRuntimePlayer")); }
			ScriptFunction SaveTinyWeaponValue() { return mSaveTinyWeaponValue ? mSaveTinyWeaponValue : (mSaveTinyWeaponValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveTinyWeaponValue")); }
			ScriptFunction GetTinyWeaponValue() { return mGetTinyWeaponValue ? mGetTinyWeaponValue : (mGetTinyWeaponValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetTinyWeaponValue")); }
			ScriptFunction GetAlienFXValue() { return mGetAlienFXValue ? mGetAlienFXValue : (mGetAlienFXValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetAlienFXValue")); }
			ScriptFunction SaveAlienFXValue() { return mSaveAlienFXValue ? mSaveAlienFXValue : (mSaveAlienFXValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveAlienFXValue")); }
			ScriptFunction SaveChatFilterValue() { return mSaveChatFilterValue ? mSaveChatFilterValue : (mSaveChatFilterValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveChatFilterValue")); }
			ScriptFunction GetChatFilterValue() { return mGetChatFilterValue ? mGetChatFilterValue : (mGetChatFilterValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetChatFilterValue")); }
			ScriptFunction SaveHUDFriendStateNotificationsValue() { return mSaveHUDFriendStateNotificationsValue ? mSaveHUDFriendStateNotificationsValue : (mSaveHUDFriendStateNotificationsValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveHUDFriendStateNotificationsValue")); }
			ScriptFunction GetHUDFriendStateNotifications() { return mGetHUDFriendStateNotifications ? mGetHUDFriendStateNotifications : (mGetHUDFriendStateNotifications = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetHUDFriendStateNotifications")); }
			ScriptFunction SaveWhisperNotificationsValue() { return mSaveWhisperNotificationsValue ? mSaveWhisperNotificationsValue : (mSaveWhisperNotificationsValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveWhisperNotificationsValue")); }
			ScriptFunction GetWhisperNotificationsValue() { return mGetWhisperNotificationsValue ? mGetWhisperNotificationsValue : (mGetWhisperNotificationsValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetWhisperNotificationsValue")); }
			ScriptFunction SaveHelpTextValue() { return mSaveHelpTextValue ? mSaveHelpTextValue : (mSaveHelpTextValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveHelpTextValue")); }
			ScriptFunction GetHelpTextValue() { return mGetHelpTextValue ? mGetHelpTextValue : (mGetHelpTextValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetHelpTextValue")); }
			ScriptFunction SaveSimulatedProjectilesValue() { return mSaveSimulatedProjectilesValue ? mSaveSimulatedProjectilesValue : (mSaveSimulatedProjectilesValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveSimulatedProjectilesValue")); }
			ScriptFunction GetSimulatedProjectilesValue() { return mGetSimulatedProjectilesValue ? mGetSimulatedProjectilesValue : (mGetSimulatedProjectilesValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetSimulatedProjectilesValue")); }
			ScriptFunction SaveDamageCounterValue() { return mSaveDamageCounterValue ? mSaveDamageCounterValue : (mSaveDamageCounterValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveDamageCounterValue")); }
			ScriptFunction GetDamageCounterValue() { return mGetDamageCounterValue ? mGetDamageCounterValue : (mGetDamageCounterValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetDamageCounterValue")); }
			ScriptFunction SaveHUDObjectivesValue() { return mSaveHUDObjectivesValue ? mSaveHUDObjectivesValue : (mSaveHUDObjectivesValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.SaveHUDObjectivesValue")); }
			ScriptFunction GetHUDObjectivesValue() { return mGetHUDObjectivesValue ? mGetHUDObjectivesValue : (mGetHUDObjectivesValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrControlSettings.GetHUDObjectivesValue")); }
		}
	}
	@property final auto ref
	{
		GFxObject m_ControlSettingsList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 124); }
		int m_ControlSettingsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	}
final:
	float GetCurrentControlValue(TrObject.ESettingsList Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentControlValue, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void FlushSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlushSettings, cast(void*)0, cast(void*)0);
	}
	void StoreSetting(int SettingId, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.StoreSetting, params.ptr, cast(void*)0);
	}
	int ReadSetting(int SettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadSetting, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ReadSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadSettings, cast(void*)0, cast(void*)0);
	}
	void LoadControlSettings(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadControlSettings, params.ptr, cast(void*)0);
	}
	void AddControlSetting(ScriptString ControlName, float val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ControlName;
		*cast(float*)&params[12] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddControlSetting, params.ptr, cast(void*)0);
	}
	void SaveControlSetting(int Index, float val, bool bStore)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = val;
		*cast(bool*)&params[8] = bStore;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveControlSetting, params.ptr, cast(void*)0);
	}
	TrObject.ESettingsList GetControlTypeFromName(ScriptString ControlName)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ControlName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetControlTypeFromName, params.ptr, cast(void*)0);
		return *cast(TrObject.ESettingsList*)&params[12];
	}
	ScriptString GetControlNameFromType(TrObject.ESettingsList Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetControlNameFromType, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	PlayerInput GetPlayerInput()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerInput, params.ptr, cast(void*)0);
		return *cast(PlayerInput*)params.ptr;
	}
	void UpdateRuntimePlayer(PlayerInput EngineInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = EngineInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRuntimePlayer, params.ptr, cast(void*)0);
	}
	void SaveTinyWeaponValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveTinyWeaponValue, params.ptr, cast(void*)0);
	}
	bool GetTinyWeaponValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTinyWeaponValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool GetAlienFXValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAlienFXValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SaveAlienFXValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveAlienFXValue, params.ptr, cast(void*)0);
	}
	void SaveChatFilterValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveChatFilterValue, params.ptr, cast(void*)0);
	}
	bool GetChatFilterValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetChatFilterValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SaveHUDFriendStateNotificationsValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveHUDFriendStateNotificationsValue, params.ptr, cast(void*)0);
	}
	bool GetHUDFriendStateNotifications()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHUDFriendStateNotifications, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SaveWhisperNotificationsValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveWhisperNotificationsValue, params.ptr, cast(void*)0);
	}
	int GetWhisperNotificationsValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWhisperNotificationsValue, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void SaveHelpTextValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveHelpTextValue, params.ptr, cast(void*)0);
	}
	bool GetHelpTextValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHelpTextValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SaveSimulatedProjectilesValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveSimulatedProjectilesValue, params.ptr, cast(void*)0);
	}
	bool GetSimulatedProjectilesValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSimulatedProjectilesValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SaveDamageCounterValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveDamageCounterValue, params.ptr, cast(void*)0);
	}
	bool GetDamageCounterValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamageCounterValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SaveHUDObjectivesValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveHUDObjectivesValue, params.ptr, cast(void*)0);
	}
	bool GetHUDObjectivesValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHUDObjectivesValue, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
