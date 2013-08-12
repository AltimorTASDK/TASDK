module UnrealScript.Engine.AudioDevice;

import ScriptClasses;
import UnrealScript.Core.Subsystem;
import UnrealScript.Engine.ReverbVolume;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundClass;
import UnrealScript.Engine.PortalVolume;
import UnrealScript.Engine.SoundMode;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface AudioDevice : Subsystem
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AudioDevice")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetSoundMode;
			ScriptFunction mFindSoundClass;
		}
		public @property static final
		{
			ScriptFunction SetSoundMode() { return mSetSoundMode ? mSetSoundMode : (mSetSoundMode = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioDevice.SetSoundMode")); }
			ScriptFunction FindSoundClass() { return mFindSoundClass ? mFindSoundClass : (mFindSoundClass = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioDevice.FindSoundClass")); }
		}
	}
	enum EDebugState : ubyte
	{
		DEBUGSTATE_None = 0,
		DEBUGSTATE_IsolateDryAudio = 1,
		DEBUGSTATE_IsolateReverb = 2,
		DEBUGSTATE_TestLPF = 3,
		DEBUGSTATE_TestStereoBleed = 4,
		DEBUGSTATE_TestLFEBleed = 5,
		DEBUGSTATE_DisableLPF = 6,
		DEBUGSTATE_DisableRadio = 7,
		DEBUGSTATE_MAX = 8,
	}
	enum ESoundClassName : ubyte
	{
		World_Props = 0,
		WeaponFoley = 1,
		WeaponFire = 2,
		WeaponExplosion = 3,
		Weapon = 4,
		VoxRadio = 5,
		VoxIngame = 6,
		VoxHelp = 7,
		VoxExceptions = 8,
		VoxAnnouncer = 9,
		Vox2 = 10,
		VOX = 11,
		Vehicle = 12,
		UI = 13,
		Tutorial_VOX_Reverb = 14,
		Tutorial_SFX_Reverb = 15,
		SFXExceptions = 16,
		SFX = 17,
		Music = 18,
		Master = 19,
		Concussion = 20,
		Character = 21,
		Ambient = 22,
		ESoundClassName_MAX = 23,
	}
	enum ETTSSpeaker : ubyte
	{
		TTSSPEAKER_Paul = 0,
		TTSSPEAKER_Harry = 1,
		TTSSPEAKER_Frank = 2,
		TTSSPEAKER_Dennis = 3,
		TTSSPEAKER_Kit = 4,
		TTSSPEAKER_Betty = 5,
		TTSSPEAKER_Ursula = 6,
		TTSSPEAKER_Rita = 7,
		TTSSPEAKER_Wendy = 8,
		TTSSPEAKER_MAX = 9,
	}
	struct Listener
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AudioDevice.Listener")); }
		@property final auto ref
		{
			Vector Front() { return *cast(Vector*)(cast(size_t)&this + 40); }
			Vector Right() { return *cast(Vector*)(cast(size_t)&this + 28); }
			Vector Up() { return *cast(Vector*)(cast(size_t)&this + 16); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 4); }
			// WARNING: Property 'PortalVolume' has the same name as a defined type!
		}
	}
	struct AudioClassInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AudioDevice.AudioClassInfo")); }
		@property final auto ref
		{
			int SizeRealTime() { return *cast(int*)(cast(size_t)&this + 12); }
			int NumRealTime() { return *cast(int*)(cast(size_t)&this + 8); }
			int SizeResident() { return *cast(int*)(cast(size_t)&this + 4); }
			int NumResident() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) AudioComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 128); }
			ScriptArray!(UObject.Pointer) Sources() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 140); }
			ScriptArray!(UObject.Pointer) FreeSources() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 152); }
			ScriptArray!(AudioDevice.Listener) Listeners() { return *cast(ScriptArray!(AudioDevice.Listener)*)(cast(size_t)cast(void*)this + 224); }
			float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
			float TransientMasterVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			AudioDevice.EDebugState DebugState() { return *cast(AudioDevice.EDebugState*)(cast(size_t)cast(void*)this + 696); }
			UObject.Pointer TextToSpeech() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 692); }
			float ExteriorLPFInterp() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
			float ExteriorVolumeInterp() { return *cast(float*)(cast(size_t)cast(void*)this + 680); }
			float InteriorLPFInterp() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
			float InteriorVolumeInterp() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
			UObject.Double ExteriorLPFEndTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 664); }
			UObject.Double InteriorLPFEndTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 656); }
			UObject.Double ExteriorEndTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 648); }
			UObject.Double InteriorEndTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 640); }
			UObject.Double InteriorStartTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 632); }
			ReverbVolume.InteriorSettings ListenerInteriorSettings() { return *cast(ReverbVolume.InteriorSettings*)(cast(size_t)cast(void*)this + 596); }
			int ListenerVolumeIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
			UObject.Double SoundModeEndTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 584); }
			UObject.Double SoundModeFadeInEndTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 576); }
			UObject.Double SoundModeFadeInStartTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 568); }
			UObject.Double SoundModeStartTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 560); }
			SoundMode CurrentMode() { return *cast(SoundMode*)(cast(size_t)cast(void*)this + 556); }
			ScriptName BaseSoundModeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 548); }
			UObject.Pointer Effects() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 544); }
			QWord CurrentTick() { return *cast(QWord*)(cast(size_t)cast(void*)this + 236); }
			int CommonAudioPoolFreeBytes() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			UObject.Pointer CommonAudioPool() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
			SoundNodeWave ChirpOutSoundNodeWave() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 112); }
			ScriptString ChirpOutSoundNodeWaveName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
			SoundNodeWave ChirpInSoundNodeWave() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 96); }
			ScriptString ChirpInSoundNodeWaveName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
			float MinCompressedDurationGame() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float MinCompressedDurationEditor() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float LowPassFilterResonance() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			int CommonAudioPoolSize() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			int MaxChannels() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bGameWasTicking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
		bool bGameWasTicking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
		bool m_bEnableBassBoost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
		bool m_bEnableBassBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	}
final:
	bool SetSoundMode(ScriptName NewMode)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSoundMode, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	SoundClass FindSoundClass(ScriptName SoundClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSoundClass, params.ptr, cast(void*)0);
		return *cast(SoundClass*)&params[8];
	}
}
