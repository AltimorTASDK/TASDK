module UnrealScript.TribesGame.TrAudioSettings;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrAudioSettings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAudioSettings")); }
	private static __gshared TrAudioSettings mDefaultProperties;
	@property final static TrAudioSettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAudioSettings)("TrAudioSettings TribesGame.Default__TrAudioSettings")); }
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
			ScriptFunction GetCurrentSettingValue() { return mGetCurrentSettingValue ? mGetCurrentSettingValue : (mGetCurrentSettingValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.GetCurrentSettingValue")); }
			ScriptFunction FlushSettings() { return mFlushSettings ? mFlushSettings : (mFlushSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.FlushSettings")); }
			ScriptFunction StoreSetting() { return mStoreSetting ? mStoreSetting : (mStoreSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.StoreSetting")); }
			ScriptFunction ReadSetting() { return mReadSetting ? mReadSetting : (mReadSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.ReadSetting")); }
			ScriptFunction ReadSettings() { return mReadSettings ? mReadSettings : (mReadSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.ReadSettings")); }
			ScriptFunction InitializeAudioVolumes() { return mInitializeAudioVolumes ? mInitializeAudioVolumes : (mInitializeAudioVolumes = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.InitializeAudioVolumes")); }
			ScriptFunction LoadAudioSettings() { return mLoadAudioSettings ? mLoadAudioSettings : (mLoadAudioSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.LoadAudioSettings")); }
			ScriptFunction ApplyAudioSetting() { return mApplyAudioSetting ? mApplyAudioSetting : (mApplyAudioSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.ApplyAudioSetting")); }
			ScriptFunction AddSettingToList() { return mAddSettingToList ? mAddSettingToList : (mAddSettingToList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.AddSettingToList")); }
			ScriptFunction SetMasterVolume() { return mSetMasterVolume ? mSetMasterVolume : (mSetMasterVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.SetMasterVolume")); }
			ScriptFunction SetEffectsVolume() { return mSetEffectsVolume ? mSetEffectsVolume : (mSetEffectsVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.SetEffectsVolume")); }
			ScriptFunction SetMusicVolume() { return mSetMusicVolume ? mSetMusicVolume : (mSetMusicVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.SetMusicVolume")); }
			ScriptFunction SetVGSVolume() { return mSetVGSVolume ? mSetVGSVolume : (mSetVGSVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.SetVGSVolume")); }
			ScriptFunction SetVoiceVolume() { return mSetVoiceVolume ? mSetVoiceVolume : (mSetVoiceVolume = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.SetVoiceVolume")); }
			ScriptFunction GetBassBoost() { return mGetBassBoost ? mGetBassBoost : (mGetBassBoost = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.GetBassBoost")); }
			ScriptFunction SetBassBoost() { return mSetBassBoost ? mSetBassBoost : (mSetBassBoost = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.SetBassBoost")); }
			ScriptFunction GetSettingNameFromType() { return mGetSettingNameFromType ? mGetSettingNameFromType : (mGetSettingNameFromType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAudioSettings.GetSettingNameFromType")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptString) MasterSoundClassNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 148); }
		ScriptArray!(ScriptString) EffectsSoundClassNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 160); }
		ScriptArray!(ScriptString) MusicSoundClassNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 172); }
		ScriptArray!(ScriptString) VGSSoundClassNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 184); }
		ScriptArray!(ScriptString) VoiceSoundClassNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 196); }
		int m_nVolumeMaster() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
		int m_nVolumeMusic() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
		int m_nVolumeVoice() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
		int m_nVolumeVGS() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
		int m_nVolumeEffects() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
		GFxObject m_SettingsList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 124); }
		int m_SettingsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
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
