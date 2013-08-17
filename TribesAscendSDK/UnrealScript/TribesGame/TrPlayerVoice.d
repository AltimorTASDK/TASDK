module UnrealScript.TribesGame.TrPlayerVoice;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrPlayerVoice : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerVoice")()); }
	private static __gshared TrPlayerVoice mDefaultProperties;
	@property final static TrPlayerVoice DefaultProperties() { mixin(MGDPC!(TrPlayerVoice, "TrPlayerVoice TribesGame.Default__TrPlayerVoice")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlaySoundEx;
			ScriptFunction mPlaySoundContext;
			ScriptFunction mPlayRandomSample;
		}
		public @property static final
		{
			ScriptFunction PlaySoundEx() { mixin(MGF!("mPlaySoundEx", "Function TribesGame.TrPlayerVoice.PlaySoundEx")()); }
			ScriptFunction PlaySoundContext() { mixin(MGF!("mPlaySoundContext", "Function TribesGame.TrPlayerVoice.PlaySoundContext")()); }
			ScriptFunction PlayRandomSample() { mixin(MGF!("mPlayRandomSample", "Function TribesGame.TrPlayerVoice.PlayRandomSample")()); }
		}
	}
	struct VGSCommandToVoiceMap
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrPlayerVoice.VGSCommandToVoiceMap")()); }
		@property final auto ref
		{
			SoundCue Sound() { mixin(MGPS!("SoundCue", 4)()); }
			TrVGSCommandList.VGSCommandType Command() { mixin(MGPS!("TrVGSCommandList.VGSCommandType", 0)()); }
		}
	}
	struct VGSContextCommandToVoiceMap
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrPlayerVoice.VGSContextCommandToVoiceMap")()); }
		@property final
		{
			auto ref
			{
				SoundCue Sound() { mixin(MGPS!("SoundCue", 8)()); }
				TrVGSCommandList.EVGSContextLocation ContextLocation() { mixin(MGPS!("TrVGSCommandList.EVGSContextLocation", 1)()); }
				TrVGSCommandList.EVGSContextActor ContextActor() { mixin(MGPS!("TrVGSCommandList.EVGSContextActor", 0)()); }
			}
			bool bIsEnemyLocation() { mixin(MGBPS!(4, 0x1)()); }
			bool bIsEnemyLocation(bool val) { mixin(MSBPS!(4, 0x1)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrPlayerVoice.VGSCommandToVoiceMap) m_VGSCommandToVoiceMap() { mixin(MGPC!("ScriptArray!(TrPlayerVoice.VGSCommandToVoiceMap)", 2148)()); }
		ScriptArray!(SoundCue) m_VGSSampleMap() { mixin(MGPC!("ScriptArray!(SoundCue)", 2160)()); }
		ScriptArray!(TrPlayerVoice.VGSContextCommandToVoiceMap) m_VGSContextCommandToVoiceMap() { mixin(MGPC!("ScriptArray!(TrPlayerVoice.VGSContextCommandToVoiceMap)", 2172)()); }
	}
final:
	static void PlaySoundEx(TrVGSCommandList.VGSCommandType Command, TrPlayerController TrPC, PlayerReplicationInfo InstigatorPRI)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrVGSCommandList.VGSCommandType*)params.ptr = Command;
		*cast(TrPlayerController*)&params[4] = TrPC;
		*cast(PlayerReplicationInfo*)&params[8] = InstigatorPRI;
		StaticClass.ProcessEvent(Functions.PlaySoundEx, params.ptr, cast(void*)0);
	}
	static void PlaySoundContext(TrPlayerController TrPC, TrVGSCommandList.EVGSContextActor ContextActor, TrVGSCommandList.EVGSContextLocation ContextLocation, bool bEnemyLocation, PlayerReplicationInfo InstigatorPRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		*cast(TrVGSCommandList.EVGSContextActor*)&params[4] = ContextActor;
		*cast(TrVGSCommandList.EVGSContextLocation*)&params[5] = ContextLocation;
		*cast(bool*)&params[8] = bEnemyLocation;
		*cast(PlayerReplicationInfo*)&params[12] = InstigatorPRI;
		StaticClass.ProcessEvent(Functions.PlaySoundContext, params.ptr, cast(void*)0);
	}
	static void PlayRandomSample(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		StaticClass.ProcessEvent(Functions.PlayRandomSample, params.ptr, cast(void*)0);
	}
}
