module UnrealScript.TribesGame.TrControlSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrControlSettings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrControlSettings")()); }
	private static __gshared TrControlSettings mDefaultProperties;
	@property final static TrControlSettings DefaultProperties() { mixin(MGDPC!(TrControlSettings, "TrControlSettings TribesGame.Default__TrControlSettings")()); }
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
			ScriptFunction GetCurrentControlValue() { mixin(MGF!("mGetCurrentControlValue", "Function TribesGame.TrControlSettings.GetCurrentControlValue")()); }
			ScriptFunction FlushSettings() { mixin(MGF!("mFlushSettings", "Function TribesGame.TrControlSettings.FlushSettings")()); }
			ScriptFunction StoreSetting() { mixin(MGF!("mStoreSetting", "Function TribesGame.TrControlSettings.StoreSetting")()); }
			ScriptFunction ReadSetting() { mixin(MGF!("mReadSetting", "Function TribesGame.TrControlSettings.ReadSetting")()); }
			ScriptFunction ReadSettings() { mixin(MGF!("mReadSettings", "Function TribesGame.TrControlSettings.ReadSettings")()); }
			ScriptFunction LoadControlSettings() { mixin(MGF!("mLoadControlSettings", "Function TribesGame.TrControlSettings.LoadControlSettings")()); }
			ScriptFunction AddControlSetting() { mixin(MGF!("mAddControlSetting", "Function TribesGame.TrControlSettings.AddControlSetting")()); }
			ScriptFunction SaveControlSetting() { mixin(MGF!("mSaveControlSetting", "Function TribesGame.TrControlSettings.SaveControlSetting")()); }
			ScriptFunction GetControlTypeFromName() { mixin(MGF!("mGetControlTypeFromName", "Function TribesGame.TrControlSettings.GetControlTypeFromName")()); }
			ScriptFunction GetControlNameFromType() { mixin(MGF!("mGetControlNameFromType", "Function TribesGame.TrControlSettings.GetControlNameFromType")()); }
			ScriptFunction GetPlayerInput() { mixin(MGF!("mGetPlayerInput", "Function TribesGame.TrControlSettings.GetPlayerInput")()); }
			ScriptFunction UpdateRuntimePlayer() { mixin(MGF!("mUpdateRuntimePlayer", "Function TribesGame.TrControlSettings.UpdateRuntimePlayer")()); }
			ScriptFunction SaveTinyWeaponValue() { mixin(MGF!("mSaveTinyWeaponValue", "Function TribesGame.TrControlSettings.SaveTinyWeaponValue")()); }
			ScriptFunction GetTinyWeaponValue() { mixin(MGF!("mGetTinyWeaponValue", "Function TribesGame.TrControlSettings.GetTinyWeaponValue")()); }
			ScriptFunction GetAlienFXValue() { mixin(MGF!("mGetAlienFXValue", "Function TribesGame.TrControlSettings.GetAlienFXValue")()); }
			ScriptFunction SaveAlienFXValue() { mixin(MGF!("mSaveAlienFXValue", "Function TribesGame.TrControlSettings.SaveAlienFXValue")()); }
			ScriptFunction SaveChatFilterValue() { mixin(MGF!("mSaveChatFilterValue", "Function TribesGame.TrControlSettings.SaveChatFilterValue")()); }
			ScriptFunction GetChatFilterValue() { mixin(MGF!("mGetChatFilterValue", "Function TribesGame.TrControlSettings.GetChatFilterValue")()); }
			ScriptFunction SaveHUDFriendStateNotificationsValue() { mixin(MGF!("mSaveHUDFriendStateNotificationsValue", "Function TribesGame.TrControlSettings.SaveHUDFriendStateNotificationsValue")()); }
			ScriptFunction GetHUDFriendStateNotifications() { mixin(MGF!("mGetHUDFriendStateNotifications", "Function TribesGame.TrControlSettings.GetHUDFriendStateNotifications")()); }
			ScriptFunction SaveWhisperNotificationsValue() { mixin(MGF!("mSaveWhisperNotificationsValue", "Function TribesGame.TrControlSettings.SaveWhisperNotificationsValue")()); }
			ScriptFunction GetWhisperNotificationsValue() { mixin(MGF!("mGetWhisperNotificationsValue", "Function TribesGame.TrControlSettings.GetWhisperNotificationsValue")()); }
			ScriptFunction SaveHelpTextValue() { mixin(MGF!("mSaveHelpTextValue", "Function TribesGame.TrControlSettings.SaveHelpTextValue")()); }
			ScriptFunction GetHelpTextValue() { mixin(MGF!("mGetHelpTextValue", "Function TribesGame.TrControlSettings.GetHelpTextValue")()); }
			ScriptFunction SaveSimulatedProjectilesValue() { mixin(MGF!("mSaveSimulatedProjectilesValue", "Function TribesGame.TrControlSettings.SaveSimulatedProjectilesValue")()); }
			ScriptFunction GetSimulatedProjectilesValue() { mixin(MGF!("mGetSimulatedProjectilesValue", "Function TribesGame.TrControlSettings.GetSimulatedProjectilesValue")()); }
			ScriptFunction SaveDamageCounterValue() { mixin(MGF!("mSaveDamageCounterValue", "Function TribesGame.TrControlSettings.SaveDamageCounterValue")()); }
			ScriptFunction GetDamageCounterValue() { mixin(MGF!("mGetDamageCounterValue", "Function TribesGame.TrControlSettings.GetDamageCounterValue")()); }
			ScriptFunction SaveHUDObjectivesValue() { mixin(MGF!("mSaveHUDObjectivesValue", "Function TribesGame.TrControlSettings.SaveHUDObjectivesValue")()); }
			ScriptFunction GetHUDObjectivesValue() { mixin(MGF!("mGetHUDObjectivesValue", "Function TribesGame.TrControlSettings.GetHUDObjectivesValue")()); }
		}
	}
	@property final auto ref
	{
		GFxObject m_ControlSettingsList() { mixin(MGPC!("GFxObject", 124)()); }
		int m_ControlSettingsCount() { mixin(MGPC!("int", 120)()); }
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
	void SaveControlSetting(int Index, float val, bool* bStore = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = val;
		if (bStore !is null)
			*cast(bool*)&params[8] = *bStore;
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
