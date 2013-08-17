module UnrealScript.Engine.UIDataStore_OnlineGameSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataStore_Settings;
import UnrealScript.Engine.UIDataProvider_Settings;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStore_OnlineGameSettings : UIDataStore_Settings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_OnlineGameSettings")()); }
	private static __gshared UIDataStore_OnlineGameSettings mDefaultProperties;
	@property final static UIDataStore_OnlineGameSettings DefaultProperties() { mixin(MGDPC!(UIDataStore_OnlineGameSettings, "UIDataStore_OnlineGameSettings Engine.Default__UIDataStore_OnlineGameSettings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnSettingProviderChanged;
			ScriptFunction mCreateGame;
			ScriptFunction mGetCurrentGameSettings;
			ScriptFunction mGetCurrentProvider;
			ScriptFunction mSetCurrentByIndex;
			ScriptFunction mSetCurrentByName;
			ScriptFunction mMoveToNext;
			ScriptFunction mMoveToPrevious;
			ScriptFunction mRegistered;
			ScriptFunction mUnregistered;
		}
		public @property static final
		{
			ScriptFunction OnSettingProviderChanged() { mixin(MGF!("mOnSettingProviderChanged", "Function Engine.UIDataStore_OnlineGameSettings.OnSettingProviderChanged")()); }
			ScriptFunction CreateGame() { mixin(MGF!("mCreateGame", "Function Engine.UIDataStore_OnlineGameSettings.CreateGame")()); }
			ScriptFunction GetCurrentGameSettings() { mixin(MGF!("mGetCurrentGameSettings", "Function Engine.UIDataStore_OnlineGameSettings.GetCurrentGameSettings")()); }
			ScriptFunction GetCurrentProvider() { mixin(MGF!("mGetCurrentProvider", "Function Engine.UIDataStore_OnlineGameSettings.GetCurrentProvider")()); }
			ScriptFunction SetCurrentByIndex() { mixin(MGF!("mSetCurrentByIndex", "Function Engine.UIDataStore_OnlineGameSettings.SetCurrentByIndex")()); }
			ScriptFunction SetCurrentByName() { mixin(MGF!("mSetCurrentByName", "Function Engine.UIDataStore_OnlineGameSettings.SetCurrentByName")()); }
			ScriptFunction MoveToNext() { mixin(MGF!("mMoveToNext", "Function Engine.UIDataStore_OnlineGameSettings.MoveToNext")()); }
			ScriptFunction MoveToPrevious() { mixin(MGF!("mMoveToPrevious", "Function Engine.UIDataStore_OnlineGameSettings.MoveToPrevious")()); }
			ScriptFunction Registered() { mixin(MGF!("mRegistered", "Function Engine.UIDataStore_OnlineGameSettings.Registered")()); }
			ScriptFunction Unregistered() { mixin(MGF!("mUnregistered", "Function Engine.UIDataStore_OnlineGameSettings.Unregistered")()); }
		}
	}
	struct GameSettingsCfg
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIDataStore_OnlineGameSettings.GameSettingsCfg")()); }
		@property final auto ref
		{
			ScriptName SettingsName() { mixin(MGPS!("ScriptName", 12)()); }
			OnlineGameSettings GameSettings() { mixin(MGPS!("OnlineGameSettings", 8)()); }
			UIDataProvider_Settings Provider() { mixin(MGPS!("UIDataProvider_Settings", 4)()); }
			ScriptClass GameSettingsClass() { mixin(MGPS!("ScriptClass", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_OnlineGameSettings.GameSettingsCfg) GameSettingsCfgList() { mixin(MGPC!("ScriptArray!(UIDataStore_OnlineGameSettings.GameSettingsCfg)", 120)()); }
		int SelectedIndex() { mixin(MGPC!("int", 136)()); }
		ScriptClass SettingsProviderClass() { mixin(MGPC!("ScriptClass", 132)()); }
	}
final:
	void OnSettingProviderChanged(UIDataProvider SourceProvider, ScriptName* SettingsName = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		if (SettingsName !is null)
			*cast(ScriptName*)&params[4] = *SettingsName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSettingProviderChanged, params.ptr, cast(void*)0);
	}
	bool CreateGame(ubyte ControllerIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = ControllerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	OnlineGameSettings GetCurrentGameSettings()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentGameSettings, params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)params.ptr;
	}
	UIDataProvider_Settings GetCurrentProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentProvider, params.ptr, cast(void*)0);
		return *cast(UIDataProvider_Settings*)params.ptr;
	}
	void SetCurrentByIndex(int NewIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentByIndex, params.ptr, cast(void*)0);
	}
	void SetCurrentByName(ScriptName SettingsName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SettingsName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentByName, params.ptr, cast(void*)0);
	}
	void MoveToNext()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToNext, cast(void*)0, cast(void*)0);
	}
	void MoveToPrevious()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToPrevious, cast(void*)0, cast(void*)0);
	}
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Registered, params.ptr, cast(void*)0);
	}
	void Unregistered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Unregistered, params.ptr, cast(void*)0);
	}
}
