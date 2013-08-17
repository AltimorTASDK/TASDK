module UnrealScript.TribesGame.TrAudioSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrAudioSettings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAudioSettings")()); }
	private static __gshared TrAudioSettings mDefaultProperties;
	@property final static TrAudioSettings DefaultProperties() { mixin(MGDPC!(TrAudioSettings, "TrAudioSettings TribesGame.Default__TrAudioSettings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCurrentSettingValue;
			ScriptFunction mFlushSettings;
			ScriptFunction mStoreSetting;
			ScriptFunction mReadSetting;
			ScriptFunction mReadSettings;
			ScriptFunction mInitializeAudioVolumes;
			ScriptFunction mLoadAudioSettings;
			ScriptFunction mApplyAudioSetting;
			ScriptFunction mAddSettingToList;
			ScriptFunction mSetMasterVolume;
			ScriptFunction mSetEffectsVolume;
			ScriptFunction mSetMusicVolume;
			ScriptFunction mSetVGSVolume;
			ScriptFunction mSetVoiceVolume;
			ScriptFunction mGetBassBoost;
			ScriptFunction mSetBassBoost;
			ScriptFunction mGetSettingNameFromType;
		}
		public @property static final
		{
			ScriptFunction GetCurrentSettingValue() { mixin(MGF!("mGetCurrentSettingValue", "Function TribesGame.TrAudioSettings.GetCurrentSettingValue")()); }
			ScriptFunction FlushSettings() { mixin(MGF!("mFlushSettings", "Function TribesGame.TrAudioSettings.FlushSettings")()); }
			ScriptFunction StoreSetting() { mixin(MGF!("mStoreSetting", "Function TribesGame.TrAudioSettings.StoreSetting")()); }
			ScriptFunction ReadSetting() { mixin(MGF!("mReadSetting", "Function TribesGame.TrAudioSettings.ReadSetting")()); }
			ScriptFunction ReadSettings() { mixin(MGF!("mReadSettings", "Function TribesGame.TrAudioSettings.ReadSettings")()); }
			ScriptFunction InitializeAudioVolumes() { mixin(MGF!("mInitializeAudioVolumes", "Function TribesGame.TrAudioSettings.InitializeAudioVolumes")()); }
			ScriptFunction LoadAudioSettings() { mixin(MGF!("mLoadAudioSettings", "Function TribesGame.TrAudioSettings.LoadAudioSettings")()); }
			ScriptFunction ApplyAudioSetting() { mixin(MGF!("mApplyAudioSetting", "Function TribesGame.TrAudioSettings.ApplyAudioSetting")()); }
			ScriptFunction AddSettingToList() { mixin(MGF!("mAddSettingToList", "Function TribesGame.TrAudioSettings.AddSettingToList")()); }
			ScriptFunction SetMasterVolume() { mixin(MGF!("mSetMasterVolume", "Function TribesGame.TrAudioSettings.SetMasterVolume")()); }
			ScriptFunction SetEffectsVolume() { mixin(MGF!("mSetEffectsVolume", "Function TribesGame.TrAudioSettings.SetEffectsVolume")()); }
			ScriptFunction SetMusicVolume() { mixin(MGF!("mSetMusicVolume", "Function TribesGame.TrAudioSettings.SetMusicVolume")()); }
			ScriptFunction SetVGSVolume() { mixin(MGF!("mSetVGSVolume", "Function TribesGame.TrAudioSettings.SetVGSVolume")()); }
			ScriptFunction SetVoiceVolume() { mixin(MGF!("mSetVoiceVolume", "Function TribesGame.TrAudioSettings.SetVoiceVolume")()); }
			ScriptFunction GetBassBoost() { mixin(MGF!("mGetBassBoost", "Function TribesGame.TrAudioSettings.GetBassBoost")()); }
			ScriptFunction SetBassBoost() { mixin(MGF!("mSetBassBoost", "Function TribesGame.TrAudioSettings.SetBassBoost")()); }
			ScriptFunction GetSettingNameFromType() { mixin(MGF!("mGetSettingNameFromType", "Function TribesGame.TrAudioSettings.GetSettingNameFromType")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptString) MasterSoundClassNames() { mixin(MGPC!(ScriptArray!(ScriptString), 148)()); }
		ScriptArray!(ScriptString) EffectsSoundClassNames() { mixin(MGPC!(ScriptArray!(ScriptString), 160)()); }
		ScriptArray!(ScriptString) MusicSoundClassNames() { mixin(MGPC!(ScriptArray!(ScriptString), 172)()); }
		ScriptArray!(ScriptString) VGSSoundClassNames() { mixin(MGPC!(ScriptArray!(ScriptString), 184)()); }
		ScriptArray!(ScriptString) VoiceSoundClassNames() { mixin(MGPC!(ScriptArray!(ScriptString), 196)()); }
		int m_nVolumeMaster() { mixin(MGPC!(int, 144)()); }
		int m_nVolumeMusic() { mixin(MGPC!(int, 140)()); }
		int m_nVolumeVoice() { mixin(MGPC!(int, 136)()); }
		int m_nVolumeVGS() { mixin(MGPC!(int, 132)()); }
		int m_nVolumeEffects() { mixin(MGPC!(int, 128)()); }
		GFxObject m_SettingsList() { mixin(MGPC!(GFxObject, 124)()); }
		int m_SettingsCount() { mixin(MGPC!(int, 120)()); }
	}
final:
	int GetCurrentSettingValue(TrObject.ESettingsList Type)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentSettingValue, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
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
	void InitializeAudioVolumes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeAudioVolumes, cast(void*)0, cast(void*)0);
	}
	void LoadAudioSettings(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadAudioSettings, params.ptr, cast(void*)0);
	}
	void ApplyAudioSetting(int Type, int val, bool bStore)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Type;
		*cast(int*)&params[4] = val;
		*cast(bool*)&params[8] = bStore;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyAudioSetting, params.ptr, cast(void*)0);
	}
	void AddSettingToList(ScriptString SettingName, int val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SettingName;
		*cast(int*)&params[12] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSettingToList, params.ptr, cast(void*)0);
	}
	void SetMasterVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMasterVolume, params.ptr, cast(void*)0);
	}
	void SetEffectsVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEffectsVolume, params.ptr, cast(void*)0);
	}
	void SetMusicVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMusicVolume, params.ptr, cast(void*)0);
	}
	void SetVGSVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVGSVolume, params.ptr, cast(void*)0);
	}
	void SetVoiceVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVoiceVolume, params.ptr, cast(void*)0);
	}
	bool GetBassBoost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBassBoost, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetBassBoost(bool NewBassBoost)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewBassBoost;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBassBoost, params.ptr, cast(void*)0);
	}
	ScriptString GetSettingNameFromType(TrObject.ESettingsList Type)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSettingNameFromType, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
