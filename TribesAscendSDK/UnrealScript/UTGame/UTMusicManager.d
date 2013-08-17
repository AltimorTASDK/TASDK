module UnrealScript.UTGame.UTMusicManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Info;

extern(C++) interface UTMusicManager : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTMusicManager")()); }
	private static __gshared UTMusicManager mDefaultProperties;
	@property final static UTMusicManager DefaultProperties() { mixin(MGDPC!(UTMusicManager, "UTMusicManager UTGame.Default__UTMusicManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAlreadyInActionMusic;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mStartMusic;
			ScriptFunction mIntroFinished;
			ScriptFunction mCreateNewTrack;
			ScriptFunction mMusicEvent;
			ScriptFunction mProcessMusicEvent;
			ScriptFunction mTick;
			ScriptFunction mChangeTrack;
		}
		public @property static final
		{
			ScriptFunction AlreadyInActionMusic() { mixin(MGF!("mAlreadyInActionMusic", "Function UTGame.UTMusicManager.AlreadyInActionMusic")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTMusicManager.PostBeginPlay")()); }
			ScriptFunction StartMusic() { mixin(MGF!("mStartMusic", "Function UTGame.UTMusicManager.StartMusic")()); }
			ScriptFunction IntroFinished() { mixin(MGF!("mIntroFinished", "Function UTGame.UTMusicManager.IntroFinished")()); }
			ScriptFunction CreateNewTrack() { mixin(MGF!("mCreateNewTrack", "Function UTGame.UTMusicManager.CreateNewTrack")()); }
			ScriptFunction MusicEvent() { mixin(MGF!("mMusicEvent", "Function UTGame.UTMusicManager.MusicEvent")()); }
			ScriptFunction ProcessMusicEvent() { mixin(MGF!("mProcessMusicEvent", "Function UTGame.UTMusicManager.ProcessMusicEvent")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function UTGame.UTMusicManager.Tick")()); }
			ScriptFunction ChangeTrack() { mixin(MGF!("mChangeTrack", "Function UTGame.UTMusicManager.ChangeTrack")()); }
		}
	}
	enum EMusicState : ubyte
	{
		MST_Ambient = 0,
		MST_Tension = 1,
		MST_Suspense = 2,
		MST_Action = 3,
		MST_Victory = 4,
		MST_MAX = 5,
	}
	@property final
	{
		auto ref
		{
			float MusicStartTime() { mixin(MGPC!(float, 476)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MusicTracks'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'CurrentTrack'!
			int LastBeat() { mixin(MGPC!(int, 480)()); }
			UTMusicManager.EMusicState CurrentState() { mixin(MGPC!(UTMusicManager.EMusicState, 512)()); }
			float MusicVolume() { mixin(MGPC!(float, 496)()); }
			UTPlayerController PlayerOwner() { mixin(MGPC!(UTPlayerController, 492)()); }
			float CurrTempo() { mixin(MGPC!(float, 484)()); }
			float CurrFadeFactor() { mixin(MGPC!(float, 488)()); }
			int PendingEvent() { mixin(MGPC!(int, 516)()); }
			float PendingEventPlayTime() { mixin(MGPC!(float, 520)()); }
			float PendingEventDelay() { mixin(MGPC!(float, 524)()); }
			float LastActionEventTime() { mixin(MGPC!(float, 500)()); }
			float StingerVolumeMultiplier() { mixin(MGPC!(float, 508)()); }
		}
		bool bPendingAction() { mixin(MGBPC!(504, 0x1)()); }
		bool bPendingAction(bool val) { mixin(MSBPC!(504, 0x1)()); }
	}
final:
	bool AlreadyInActionMusic()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AlreadyInActionMusic, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void StartMusic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMusic, cast(void*)0, cast(void*)0);
	}
	void IntroFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.IntroFinished, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* CreateNewTrack(SoundCue MusicCue)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = MusicCue;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateNewTrack, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void MusicEvent(int NewEventIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewEventIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.MusicEvent, params.ptr, cast(void*)0);
	}
	void ProcessMusicEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessMusicEvent, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void ChangeTrack(UTMusicManager.EMusicState NewState)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTMusicManager.EMusicState*)params.ptr = NewState;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeTrack, params.ptr, cast(void*)0);
	}
}
