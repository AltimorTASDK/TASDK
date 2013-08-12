module UnrealScript.TribesGame.TrMusicManager;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Info;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrMusicManager : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMusicManager")); }
	private static __gshared TrMusicManager mDefaultProperties;
	@property final static TrMusicManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMusicManager)("TrMusicManager TribesGame.Default__TrMusicManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mCreateNewTrack;
			ScriptFunction mStartMusic;
			ScriptFunction mSetStateBasedOnGameState;
			ScriptFunction mTick;
			ScriptFunction mMusicEvent;
			ScriptFunction mSetPendingState;
			ScriptFunction mSetCurrentState;
			ScriptFunction mPlayerScoredFlag;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.PostBeginPlay")); }
			ScriptFunction CreateNewTrack() { return mCreateNewTrack ? mCreateNewTrack : (mCreateNewTrack = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.CreateNewTrack")); }
			ScriptFunction StartMusic() { return mStartMusic ? mStartMusic : (mStartMusic = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.StartMusic")); }
			ScriptFunction SetStateBasedOnGameState() { return mSetStateBasedOnGameState ? mSetStateBasedOnGameState : (mSetStateBasedOnGameState = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.SetStateBasedOnGameState")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.Tick")); }
			ScriptFunction MusicEvent() { return mMusicEvent ? mMusicEvent : (mMusicEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.MusicEvent")); }
			ScriptFunction SetPendingState() { return mSetPendingState ? mSetPendingState : (mSetPendingState = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.SetPendingState")); }
			ScriptFunction SetCurrentState() { return mSetCurrentState ? mSetCurrentState : (mSetCurrentState = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.SetCurrentState")); }
			ScriptFunction PlayerScoredFlag() { return mPlayerScoredFlag ? mPlayerScoredFlag : (mPlayerScoredFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrMusicManager.PlayerScoredFlag")); }
		}
	}
	enum ETgMusicState : ubyte
	{
		MUSICSTATE_BattleLow = 0,
		MUSICSTATE_BattleMed = 1,
		MUSICSTATE_BattleHigh = 2,
		MUSICSTATE_FlagPossession = 3,
		MUSICSTATE_DeathDirge = 4,
		MUSICSTATE_TeamWonMatch = 5,
		MUSICSTATE_TeamLostMatch = 6,
		MUSICSTATE_NoMusic = 7,
		MUSICSTATE_Ambient = 8,
		MUSICSTATE_MAX = 9,
	}
	@property final auto ref
	{
		TrPlayerController m_PlayerOwner() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 476); }
		float m_fMusicVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		TrMusicManager.ETgMusicState m_CurrentState() { return *cast(TrMusicManager.ETgMusicState*)(cast(size_t)cast(void*)this + 488); }
		TrMusicManager.ETgMusicState m_PendingState() { return *cast(TrMusicManager.ETgMusicState*)(cast(size_t)cast(void*)this + 489); }
		float m_fStingerVolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		float m_CTFTeamScores() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
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
	void StartMusic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMusic, cast(void*)0, cast(void*)0);
	}
	void SetStateBasedOnGameState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStateBasedOnGameState, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void MusicEvent(int NewEventIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewEventIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.MusicEvent, params.ptr, cast(void*)0);
	}
	void SetPendingState(TrMusicManager.ETgMusicState NewState)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrMusicManager.ETgMusicState*)params.ptr = NewState;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPendingState, params.ptr, cast(void*)0);
	}
	void SetCurrentState(TrMusicManager.ETgMusicState NewState)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrMusicManager.ETgMusicState*)params.ptr = NewState;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentState, params.ptr, cast(void*)0);
	}
	void PlayerScoredFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerScoredFlag, cast(void*)0, cast(void*)0);
	}
}
