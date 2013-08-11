module UnrealScript.TribesGame.TrAudioSettings;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrAudioSettings : GFxObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57196], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void FlushSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68950], cast(void*)0, cast(void*)0);
	}
	void StoreSetting(int SettingId, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68951], params.ptr, cast(void*)0);
	}
	int ReadSetting(int SettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68954], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ReadSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68957], cast(void*)0, cast(void*)0);
	}
	void InitializeAudioVolumes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68960], cast(void*)0, cast(void*)0);
	}
	void LoadAudioSettings(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68961], params.ptr, cast(void*)0);
	}
	void ApplyAudioSetting(int Type, int val, bool bStore)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Type;
		*cast(int*)&params[4] = val;
		*cast(bool*)&params[8] = bStore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68964], params.ptr, cast(void*)0);
	}
	void AddSettingToList(ScriptString SettingName, int val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SettingName;
		*cast(int*)&params[12] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68969], params.ptr, cast(void*)0);
	}
	void SetMasterVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68973], params.ptr, cast(void*)0);
	}
	void SetEffectsVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68976], params.ptr, cast(void*)0);
	}
	void SetMusicVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68979], params.ptr, cast(void*)0);
	}
	void SetVGSVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68982], params.ptr, cast(void*)0);
	}
	void SetVoiceVolume(float NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68985], params.ptr, cast(void*)0);
	}
	bool GetBassBoost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68988], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetBassBoost(bool NewBassBoost)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewBassBoost;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68993], params.ptr, cast(void*)0);
	}
	ScriptString GetSettingNameFromType(TrObject.ESettingsList Type)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68996], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
