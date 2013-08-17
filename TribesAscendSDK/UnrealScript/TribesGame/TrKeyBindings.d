module UnrealScript.TribesGame.TrKeyBindings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrPlayerInput_Spectator;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrKeyBindings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrKeyBindings")()); }
	private static __gshared TrKeyBindings mDefaultProperties;
	@property final static TrKeyBindings DefaultProperties() { mixin(MGDPC!(TrKeyBindings, "TrKeyBindings TribesGame.Default__TrKeyBindings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCurrentBind;
			ScriptFunction mSaveKeyBind;
			ScriptFunction mFlushSettings;
			ScriptFunction mClearSettingById;
			ScriptFunction mClearSettingByValue;
			ScriptFunction mStoreSetting;
			ScriptFunction mReadSetting;
			ScriptFunction mCaptureNextKey;
			ScriptFunction mResetDefaultKeyBindings;
			ScriptFunction mResetDefaultSpectatorBindings;
			ScriptFunction mReadBindings;
			ScriptFunction mAddBinding;
			ScriptFunction mApplyKeyBinding;
			ScriptFunction mSavePlayerKeyBind;
			ScriptFunction mSaveSpectatorKeyBind;
			ScriptFunction mUnbindPlayerCommand;
			ScriptFunction mUnbindSpectatorCommand;
			ScriptFunction mGetCurrentBinding;
			ScriptFunction mGetCommandName;
			ScriptFunction mApplyDefaultSettings;
			ScriptFunction mGetPlayerInput;
			ScriptFunction mGetSpectatorInput;
			ScriptFunction mUpdateRuntimePlayer;
			ScriptFunction mUpdateRuntimeSpectator;
			ScriptFunction mSaveInterceptKeys;
		}
		public @property static final
		{
			ScriptFunction GetCurrentBind() { mixin(MGF!("mGetCurrentBind", "Function TribesGame.TrKeyBindings.GetCurrentBind")()); }
			ScriptFunction SaveKeyBind() { mixin(MGF!("mSaveKeyBind", "Function TribesGame.TrKeyBindings.SaveKeyBind")()); }
			ScriptFunction FlushSettings() { mixin(MGF!("mFlushSettings", "Function TribesGame.TrKeyBindings.FlushSettings")()); }
			ScriptFunction ClearSettingById() { mixin(MGF!("mClearSettingById", "Function TribesGame.TrKeyBindings.ClearSettingById")()); }
			ScriptFunction ClearSettingByValue() { mixin(MGF!("mClearSettingByValue", "Function TribesGame.TrKeyBindings.ClearSettingByValue")()); }
			ScriptFunction StoreSetting() { mixin(MGF!("mStoreSetting", "Function TribesGame.TrKeyBindings.StoreSetting")()); }
			ScriptFunction ReadSetting() { mixin(MGF!("mReadSetting", "Function TribesGame.TrKeyBindings.ReadSetting")()); }
			ScriptFunction CaptureNextKey() { mixin(MGF!("mCaptureNextKey", "Function TribesGame.TrKeyBindings.CaptureNextKey")()); }
			ScriptFunction ResetDefaultKeyBindings() { mixin(MGF!("mResetDefaultKeyBindings", "Function TribesGame.TrKeyBindings.ResetDefaultKeyBindings")()); }
			ScriptFunction ResetDefaultSpectatorBindings() { mixin(MGF!("mResetDefaultSpectatorBindings", "Function TribesGame.TrKeyBindings.ResetDefaultSpectatorBindings")()); }
			ScriptFunction ReadBindings() { mixin(MGF!("mReadBindings", "Function TribesGame.TrKeyBindings.ReadBindings")()); }
			ScriptFunction AddBinding() { mixin(MGF!("mAddBinding", "Function TribesGame.TrKeyBindings.AddBinding")()); }
			ScriptFunction ApplyKeyBinding() { mixin(MGF!("mApplyKeyBinding", "Function TribesGame.TrKeyBindings.ApplyKeyBinding")()); }
			ScriptFunction SavePlayerKeyBind() { mixin(MGF!("mSavePlayerKeyBind", "Function TribesGame.TrKeyBindings.SavePlayerKeyBind")()); }
			ScriptFunction SaveSpectatorKeyBind() { mixin(MGF!("mSaveSpectatorKeyBind", "Function TribesGame.TrKeyBindings.SaveSpectatorKeyBind")()); }
			ScriptFunction UnbindPlayerCommand() { mixin(MGF!("mUnbindPlayerCommand", "Function TribesGame.TrKeyBindings.UnbindPlayerCommand")()); }
			ScriptFunction UnbindSpectatorCommand() { mixin(MGF!("mUnbindSpectatorCommand", "Function TribesGame.TrKeyBindings.UnbindSpectatorCommand")()); }
			ScriptFunction GetCurrentBinding() { mixin(MGF!("mGetCurrentBinding", "Function TribesGame.TrKeyBindings.GetCurrentBinding")()); }
			ScriptFunction GetCommandName() { mixin(MGF!("mGetCommandName", "Function TribesGame.TrKeyBindings.GetCommandName")()); }
			ScriptFunction ApplyDefaultSettings() { mixin(MGF!("mApplyDefaultSettings", "Function TribesGame.TrKeyBindings.ApplyDefaultSettings")()); }
			ScriptFunction GetPlayerInput() { mixin(MGF!("mGetPlayerInput", "Function TribesGame.TrKeyBindings.GetPlayerInput")()); }
			ScriptFunction GetSpectatorInput() { mixin(MGF!("mGetSpectatorInput", "Function TribesGame.TrKeyBindings.GetSpectatorInput")()); }
			ScriptFunction UpdateRuntimePlayer() { mixin(MGF!("mUpdateRuntimePlayer", "Function TribesGame.TrKeyBindings.UpdateRuntimePlayer")()); }
			ScriptFunction UpdateRuntimeSpectator() { mixin(MGF!("mUpdateRuntimeSpectator", "Function TribesGame.TrKeyBindings.UpdateRuntimeSpectator")()); }
			ScriptFunction SaveInterceptKeys() { mixin(MGF!("mSaveInterceptKeys", "Function TribesGame.TrKeyBindings.SaveInterceptKeys")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString m_EscapeKeybind() { mixin(MGPC!("ScriptString", 136)()); }
			ScriptString m_FriendsHotkey() { mixin(MGPC!("ScriptString", 232)()); }
			ScriptString m_SettingsHotkey() { mixin(MGPC!("ScriptString", 244)()); }
			ScriptString m_MainMenuHotkey() { mixin(MGPC!("ScriptString", 256)()); }
			ScriptString m_ClassSelectKeybind() { mixin(MGPC!("ScriptString", 172)()); }
			ScriptString m_TeamSelectKeybind() { mixin(MGPC!("ScriptString", 160)()); }
			ScriptString m_TalkReplyKeybind() { mixin(MGPC!("ScriptString", 220)()); }
			ScriptString m_ChatHotkey() { mixin(MGPC!("ScriptString", 268)()); }
			ScriptString m_TalkKeybind() { mixin(MGPC!("ScriptString", 196)()); }
			ScriptString m_TeamTalkKeybind() { mixin(MGPC!("ScriptString", 208)()); }
			ScriptString m_ScoreboardKeybind() { mixin(MGPC!("ScriptString", 184)()); }
			ScriptString m_EnterKeybind() { mixin(MGPC!("ScriptString", 148)()); }
			PlayerInput m_EngineInput() { mixin(MGPC!("PlayerInput", 132)()); }
			GFxObject m_KeyBindingsList() { mixin(MGPC!("GFxObject", 128)()); }
			int m_KeyBindingsCount() { mixin(MGPC!("int", 124)()); }
		}
		bool m_bGotInputKey() { mixin(MGBPC!(120, 0x1)()); }
		bool m_bGotInputKey(bool val) { mixin(MSBPC!(120, 0x1)()); }
	}
final:
	ScriptString GetCurrentBind(TrObject.ESettingsList Key)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Key;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentBind, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString SaveKeyBind(int Index, ScriptString KeyName, bool* bStore = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = KeyName;
		if (bStore !is null)
			*cast(bool*)&params[16] = *bStore;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveKeyBind, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	void FlushSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlushSettings, cast(void*)0, cast(void*)0);
	}
	void ClearSettingById(int SettingId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSettingById, params.ptr, cast(void*)0);
	}
	void ClearSettingByValue(ScriptString StrValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StrValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSettingByValue, params.ptr, cast(void*)0);
	}
	void StoreSetting(int SettingId, ScriptString pKeyBind)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		*cast(ScriptString*)&params[4] = pKeyBind;
		(cast(ScriptObject)this).ProcessEvent(Functions.StoreSetting, params.ptr, cast(void*)0);
	}
	ScriptString ReadSetting(int SettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadSetting, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void CaptureNextKey()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CaptureNextKey, cast(void*)0, cast(void*)0);
	}
	void ResetDefaultKeyBindings(PlayerInput pInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = pInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetDefaultKeyBindings, params.ptr, cast(void*)0);
	}
	void ResetDefaultSpectatorBindings(TrPlayerInput_Spectator pInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerInput_Spectator*)params.ptr = pInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetDefaultSpectatorBindings, params.ptr, cast(void*)0);
	}
	void ReadBindings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadBindings, cast(void*)0, cast(void*)0);
	}
	void AddBinding(ScriptString Command, ScriptString KeyName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(ScriptString*)&params[12] = KeyName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddBinding, params.ptr, cast(void*)0);
	}
	void ApplyKeyBinding(int Index, ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyKeyBinding, params.ptr, cast(void*)0);
	}
	ScriptString SavePlayerKeyBind(int Index, ScriptString KeyName, bool bStore)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = KeyName;
		*cast(bool*)&params[16] = bStore;
		(cast(ScriptObject)this).ProcessEvent(Functions.SavePlayerKeyBind, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	ScriptString SaveSpectatorKeyBind(int Index, ScriptString KeyName, bool bStore)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = KeyName;
		*cast(bool*)&params[16] = bStore;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveSpectatorKeyBind, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	void UnbindPlayerCommand(PlayerInput pInput, ScriptString Command)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = pInput;
		*cast(ScriptString*)&params[4] = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnbindPlayerCommand, params.ptr, cast(void*)0);
	}
	void UnbindSpectatorCommand(TrPlayerInput_Spectator pInput, ScriptString Command)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPlayerInput_Spectator*)params.ptr = pInput;
		*cast(ScriptString*)&params[4] = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnbindSpectatorCommand, params.ptr, cast(void*)0);
	}
	ScriptString GetCurrentBinding(PlayerInput pInput, ScriptString Command)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = pInput;
		*cast(ScriptString*)&params[4] = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentBinding, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	ScriptString GetCommandName(TrObject.ESettingsList Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCommandName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void ApplyDefaultSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyDefaultSettings, cast(void*)0, cast(void*)0);
	}
	PlayerInput GetPlayerInput()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerInput, params.ptr, cast(void*)0);
		return *cast(PlayerInput*)params.ptr;
	}
	TrPlayerInput_Spectator GetSpectatorInput()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorInput, params.ptr, cast(void*)0);
		return *cast(TrPlayerInput_Spectator*)params.ptr;
	}
	void UpdateRuntimePlayer(PlayerInput EngineInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = EngineInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRuntimePlayer, params.ptr, cast(void*)0);
	}
	void UpdateRuntimeSpectator(TrPlayerInput_Spectator SpecInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerInput_Spectator*)params.ptr = SpecInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRuntimeSpectator, params.ptr, cast(void*)0);
	}
	void SaveInterceptKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveInterceptKeys, cast(void*)0, cast(void*)0);
	}
}
