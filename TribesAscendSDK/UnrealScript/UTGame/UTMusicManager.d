module UnrealScript.UTGame.UTMusicManager;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Info;

extern(C++) interface UTMusicManager : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMusicManager")); }
	private static __gshared UTMusicManager mDefaultProperties;
	@property final static UTMusicManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTMusicManager)("UTMusicManager UTGame.Default__UTMusicManager")); }
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
			ScriptFunction AlreadyInActionMusic() { return mAlreadyInActionMusic ? mAlreadyInActionMusic : (mAlreadyInActionMusic = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.AlreadyInActionMusic")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.PostBeginPlay")); }
			ScriptFunction StartMusic() { return mStartMusic ? mStartMusic : (mStartMusic = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.StartMusic")); }
			ScriptFunction IntroFinished() { return mIntroFinished ? mIntroFinished : (mIntroFinished = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.IntroFinished")); }
			ScriptFunction CreateNewTrack() { return mCreateNewTrack ? mCreateNewTrack : (mCreateNewTrack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.CreateNewTrack")); }
			ScriptFunction MusicEvent() { return mMusicEvent ? mMusicEvent : (mMusicEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.MusicEvent")); }
			ScriptFunction ProcessMusicEvent() { return mProcessMusicEvent ? mProcessMusicEvent : (mProcessMusicEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.ProcessMusicEvent")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.Tick")); }
			ScriptFunction ChangeTrack() { return mChangeTrack ? mChangeTrack : (mChangeTrack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMusicManager.ChangeTrack")); }
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
			float MusicStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
			int LastBeat() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
			UTMusicManager.EMusicState CurrentState() { return *cast(UTMusicManager.EMusicState*)(cast(size_t)cast(void*)this + 512); }
			float MusicVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			UTPlayerController PlayerOwner() { return *cast(UTPlayerController*)(cast(size_t)cast(void*)this + 492); }
			float CurrTempo() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			float CurrFadeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			int PendingEvent() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
			float PendingEventPlayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			float PendingEventDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float LastActionEventTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float StingerVolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
		}
		bool bPendingAction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bPendingAction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
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
