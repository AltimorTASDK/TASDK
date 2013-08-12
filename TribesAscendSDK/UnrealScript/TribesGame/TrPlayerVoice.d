module UnrealScript.TribesGame.TrPlayerVoice;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrPlayerVoice : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerVoice")); }
	private static __gshared TrPlayerVoice mDefaultProperties;
	@property final static TrPlayerVoice DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerVoice)("TrPlayerVoice TribesGame.Default__TrPlayerVoice")); }
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
			ScriptFunction PlaySoundEx() { return mPlaySoundEx ? mPlaySoundEx : (mPlaySoundEx = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerVoice.PlaySoundEx")); }
			ScriptFunction PlaySoundContext() { return mPlaySoundContext ? mPlaySoundContext : (mPlaySoundContext = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerVoice.PlaySoundContext")); }
			ScriptFunction PlayRandomSample() { return mPlayRandomSample ? mPlayRandomSample : (mPlayRandomSample = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerVoice.PlayRandomSample")); }
		}
	}
	struct VGSCommandToVoiceMap
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPlayerVoice.VGSCommandToVoiceMap")); }
		@property final auto ref
		{
			SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 4); }
			TrVGSCommandList.VGSCommandType Command() { return *cast(TrVGSCommandList.VGSCommandType*)(cast(size_t)&this + 0); }
		}
	}
	struct VGSContextCommandToVoiceMap
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPlayerVoice.VGSContextCommandToVoiceMap")); }
		@property final
		{
			auto ref
			{
				SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
				TrVGSCommandList.EVGSContextLocation ContextLocation() { return *cast(TrVGSCommandList.EVGSContextLocation*)(cast(size_t)&this + 1); }
				TrVGSCommandList.EVGSContextActor ContextActor() { return *cast(TrVGSCommandList.EVGSContextActor*)(cast(size_t)&this + 0); }
			}
			bool bIsEnemyLocation() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bIsEnemyLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrPlayerVoice.VGSCommandToVoiceMap) m_VGSCommandToVoiceMap() { return *cast(ScriptArray!(TrPlayerVoice.VGSCommandToVoiceMap)*)(cast(size_t)cast(void*)this + 2148); }
		ScriptArray!(SoundCue) m_VGSSampleMap() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 2160); }
		ScriptArray!(TrPlayerVoice.VGSContextCommandToVoiceMap) m_VGSContextCommandToVoiceMap() { return *cast(ScriptArray!(TrPlayerVoice.VGSContextCommandToVoiceMap)*)(cast(size_t)cast(void*)this + 2172); }
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
