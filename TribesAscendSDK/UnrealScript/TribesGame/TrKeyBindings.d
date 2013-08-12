module UnrealScript.TribesGame.TrKeyBindings;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrPlayerInput_Spectator;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrKeyBindings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrKeyBindings")); }
	private static __gshared TrKeyBindings mDefaultProperties;
	@property final static TrKeyBindings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrKeyBindings)("TrKeyBindings TribesGame.Default__TrKeyBindings")); }
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
			ScriptFunction GetCurrentBind() { return mGetCurrentBind ? mGetCurrentBind : (mGetCurrentBind = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.GetCurrentBind")); }
			ScriptFunction SaveKeyBind() { return mSaveKeyBind ? mSaveKeyBind : (mSaveKeyBind = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.SaveKeyBind")); }
			ScriptFunction FlushSettings() { return mFlushSettings ? mFlushSettings : (mFlushSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.FlushSettings")); }
			ScriptFunction ClearSettingById() { return mClearSettingById ? mClearSettingById : (mClearSettingById = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.ClearSettingById")); }
			ScriptFunction ClearSettingByValue() { return mClearSettingByValue ? mClearSettingByValue : (mClearSettingByValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.ClearSettingByValue")); }
			ScriptFunction StoreSetting() { return mStoreSetting ? mStoreSetting : (mStoreSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.StoreSetting")); }
			ScriptFunction ReadSetting() { return mReadSetting ? mReadSetting : (mReadSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.ReadSetting")); }
			ScriptFunction CaptureNextKey() { return mCaptureNextKey ? mCaptureNextKey : (mCaptureNextKey = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.CaptureNextKey")); }
			ScriptFunction ResetDefaultKeyBindings() { return mResetDefaultKeyBindings ? mResetDefaultKeyBindings : (mResetDefaultKeyBindings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.ResetDefaultKeyBindings")); }
			ScriptFunction ResetDefaultSpectatorBindings() { return mResetDefaultSpectatorBindings ? mResetDefaultSpectatorBindings : (mResetDefaultSpectatorBindings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.ResetDefaultSpectatorBindings")); }
			ScriptFunction ReadBindings() { return mReadBindings ? mReadBindings : (mReadBindings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.ReadBindings")); }
			ScriptFunction AddBinding() { return mAddBinding ? mAddBinding : (mAddBinding = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.AddBinding")); }
			ScriptFunction ApplyKeyBinding() { return mApplyKeyBinding ? mApplyKeyBinding : (mApplyKeyBinding = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.ApplyKeyBinding")); }
			ScriptFunction SavePlayerKeyBind() { return mSavePlayerKeyBind ? mSavePlayerKeyBind : (mSavePlayerKeyBind = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.SavePlayerKeyBind")); }
			ScriptFunction SaveSpectatorKeyBind() { return mSaveSpectatorKeyBind ? mSaveSpectatorKeyBind : (mSaveSpectatorKeyBind = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.SaveSpectatorKeyBind")); }
			ScriptFunction UnbindPlayerCommand() { return mUnbindPlayerCommand ? mUnbindPlayerCommand : (mUnbindPlayerCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.UnbindPlayerCommand")); }
			ScriptFunction UnbindSpectatorCommand() { return mUnbindSpectatorCommand ? mUnbindSpectatorCommand : (mUnbindSpectatorCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.UnbindSpectatorCommand")); }
			ScriptFunction GetCurrentBinding() { return mGetCurrentBinding ? mGetCurrentBinding : (mGetCurrentBinding = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.GetCurrentBinding")); }
			ScriptFunction GetCommandName() { return mGetCommandName ? mGetCommandName : (mGetCommandName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.GetCommandName")); }
			ScriptFunction ApplyDefaultSettings() { return mApplyDefaultSettings ? mApplyDefaultSettings : (mApplyDefaultSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.ApplyDefaultSettings")); }
			ScriptFunction GetPlayerInput() { return mGetPlayerInput ? mGetPlayerInput : (mGetPlayerInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.GetPlayerInput")); }
			ScriptFunction GetSpectatorInput() { return mGetSpectatorInput ? mGetSpectatorInput : (mGetSpectatorInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.GetSpectatorInput")); }
			ScriptFunction UpdateRuntimePlayer() { return mUpdateRuntimePlayer ? mUpdateRuntimePlayer : (mUpdateRuntimePlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.UpdateRuntimePlayer")); }
			ScriptFunction UpdateRuntimeSpectator() { return mUpdateRuntimeSpectator ? mUpdateRuntimeSpectator : (mUpdateRuntimeSpectator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.UpdateRuntimeSpectator")); }
			ScriptFunction SaveInterceptKeys() { return mSaveInterceptKeys ? mSaveInterceptKeys : (mSaveInterceptKeys = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrKeyBindings.SaveInterceptKeys")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString m_EscapeKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
			ScriptString m_FriendsHotkey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
			ScriptString m_SettingsHotkey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 244); }
			ScriptString m_MainMenuHotkey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
			ScriptString m_ClassSelectKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
			ScriptString m_TeamSelectKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
			ScriptString m_TalkReplyKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
			ScriptString m_ChatHotkey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 268); }
			ScriptString m_TalkKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
			ScriptString m_TeamTalkKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 208); }
			ScriptString m_ScoreboardKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
			ScriptString m_EnterKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
			PlayerInput m_EngineInput() { return *cast(PlayerInput*)(cast(size_t)cast(void*)this + 132); }
			GFxObject m_KeyBindingsList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 128); }
			int m_KeyBindingsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
		}
		bool m_bGotInputKey() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool m_bGotInputKey(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
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
	ScriptString SaveKeyBind(int Index, ScriptString KeyName, bool bStore)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = KeyName;
		*cast(bool*)&params[16] = bStore;
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
