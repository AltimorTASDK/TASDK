module UnrealScript.Engine.AudioDevice;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AudioDevice")); }
	private static __gshared AudioDevice mDefaultProperties;
	@property final static AudioDevice DefaultProperties() { mixin(MGDPC("AudioDevice", "AudioDevice Engine.Default__AudioDevice")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetSoundMode;
			ScriptFunction mFindSoundClass;
		}
		public @property static final
		{
			ScriptFunction SetSoundMode() { mixin(MGF("mSetSoundMode", "Function Engine.AudioDevice.SetSoundMode")); }
			ScriptFunction FindSoundClass() { mixin(MGF("mFindSoundClass", "Function Engine.AudioDevice.FindSoundClass")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.AudioDevice.Listener")); }
		@property final auto ref
		{
			Vector Front() { mixin(MGPS("Vector", 40)); }
			Vector Right() { mixin(MGPS("Vector", 28)); }
			Vector Up() { mixin(MGPS("Vector", 16)); }
			Vector Location() { mixin(MGPS("Vector", 4)); }
			PortalVolume PortalVolumeVar() { mixin(MGPS("PortalVolume", 0)); }
		}
	}
	struct AudioClassInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.AudioDevice.AudioClassInfo")); }
		@property final auto ref
		{
			int SizeRealTime() { mixin(MGPS("int", 12)); }
			int NumRealTime() { mixin(MGPS("int", 8)); }
			int SizeResident() { mixin(MGPS("int", 4)); }
			int NumResident() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) AudioComponents() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 128)); }
			ScriptArray!(Pointer) Sources() { mixin(MGPC("ScriptArray!(Pointer)", 140)); }
			ScriptArray!(Pointer) FreeSources() { mixin(MGPC("ScriptArray!(Pointer)", 152)); }
			ScriptArray!(AudioDevice.Listener) Listeners() { mixin(MGPC("ScriptArray!(AudioDevice.Listener)", 224)); }
			float LastUpdateTime() { mixin(MGPC("float", 704)); }
			float TransientMasterVolume() { mixin(MGPC("float", 700)); }
			AudioDevice.EDebugState DebugState() { mixin(MGPC("AudioDevice.EDebugState", 696)); }
			Pointer TextToSpeech() { mixin(MGPC("Pointer", 692)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'TestAudioComponent'!
			float ExteriorLPFInterp() { mixin(MGPC("float", 684)); }
			float ExteriorVolumeInterp() { mixin(MGPC("float", 680)); }
			float InteriorLPFInterp() { mixin(MGPC("float", 676)); }
			float InteriorVolumeInterp() { mixin(MGPC("float", 672)); }
			UObject.Double ExteriorLPFEndTime() { mixin(MGPC("UObject.Double", 664)); }
			UObject.Double InteriorLPFEndTime() { mixin(MGPC("UObject.Double", 656)); }
			UObject.Double ExteriorEndTime() { mixin(MGPC("UObject.Double", 648)); }
			UObject.Double InteriorEndTime() { mixin(MGPC("UObject.Double", 640)); }
			UObject.Double InteriorStartTime() { mixin(MGPC("UObject.Double", 632)); }
			ReverbVolume.InteriorSettings ListenerInteriorSettings() { mixin(MGPC("ReverbVolume.InteriorSettings", 596)); }
			int ListenerVolumeIndex() { mixin(MGPC("int", 592)); }
			UObject.Double SoundModeEndTime() { mixin(MGPC("UObject.Double", 584)); }
			UObject.Double SoundModeFadeInEndTime() { mixin(MGPC("UObject.Double", 576)); }
			UObject.Double SoundModeFadeInStartTime() { mixin(MGPC("UObject.Double", 568)); }
			UObject.Double SoundModeStartTime() { mixin(MGPC("UObject.Double", 560)); }
			SoundMode CurrentMode() { mixin(MGPC("SoundMode", 556)); }
			ScriptName BaseSoundModeName() { mixin(MGPC("ScriptName", 548)); }
			Pointer Effects() { mixin(MGPC("Pointer", 544)); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'SoundModes'!
			// ERROR: Unsupported object class 'MapProperty' for the property named 'DestinationSoundClasses'!
			// ERROR: Unsupported object class 'MapProperty' for the property named 'CurrentSoundClasses'!
			// ERROR: Unsupported object class 'MapProperty' for the property named 'SourceSoundClasses'!
			// ERROR: Unsupported object class 'MapProperty' for the property named 'SoundClasses'!
			QWord CurrentTick() { mixin(MGPC("QWord", 236)); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'WaveInstanceSourceMap'!
			int CommonAudioPoolFreeBytes() { mixin(MGPC("int", 124)); }
			Pointer CommonAudioPool() { mixin(MGPC("Pointer", 120)); }
			SoundNodeWave ChirpOutSoundNodeWave() { mixin(MGPC("SoundNodeWave", 112)); }
			ScriptString ChirpOutSoundNodeWaveName() { mixin(MGPC("ScriptString", 100)); }
			SoundNodeWave ChirpInSoundNodeWave() { mixin(MGPC("SoundNodeWave", 96)); }
			ScriptString ChirpInSoundNodeWaveName() { mixin(MGPC("ScriptString", 84)); }
			float MinCompressedDurationGame() { mixin(MGPC("float", 80)); }
			float MinCompressedDurationEditor() { mixin(MGPC("float", 76)); }
			float LowPassFilterResonance() { mixin(MGPC("float", 72)); }
			int CommonAudioPoolSize() { mixin(MGPC("int", 68)); }
			int MaxChannels() { mixin(MGPC("int", 64)); }
		}
		bool bGameWasTicking() { mixin(MGBPC(116, 0x2)); }
		bool bGameWasTicking(bool val) { mixin(MSBPC(116, 0x2)); }
		bool m_bEnableBassBoost() { mixin(MGBPC(116, 0x1)); }
		bool m_bEnableBassBoost(bool val) { mixin(MSBPC(116, 0x1)); }
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
