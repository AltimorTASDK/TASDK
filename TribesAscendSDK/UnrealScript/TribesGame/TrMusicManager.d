module UnrealScript.TribesGame.TrMusicManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Info;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrMusicManager : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMusicManager")()); }
	private static __gshared TrMusicManager mDefaultProperties;
	@property final static TrMusicManager DefaultProperties() { mixin(MGDPC!(TrMusicManager, "TrMusicManager TribesGame.Default__TrMusicManager")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrMusicManager.PostBeginPlay")()); }
			ScriptFunction CreateNewTrack() { mixin(MGF!("mCreateNewTrack", "Function TribesGame.TrMusicManager.CreateNewTrack")()); }
			ScriptFunction StartMusic() { mixin(MGF!("mStartMusic", "Function TribesGame.TrMusicManager.StartMusic")()); }
			ScriptFunction SetStateBasedOnGameState() { mixin(MGF!("mSetStateBasedOnGameState", "Function TribesGame.TrMusicManager.SetStateBasedOnGameState")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrMusicManager.Tick")()); }
			ScriptFunction MusicEvent() { mixin(MGF!("mMusicEvent", "Function TribesGame.TrMusicManager.MusicEvent")()); }
			ScriptFunction SetPendingState() { mixin(MGF!("mSetPendingState", "Function TribesGame.TrMusicManager.SetPendingState")()); }
			ScriptFunction SetCurrentState() { mixin(MGF!("mSetCurrentState", "Function TribesGame.TrMusicManager.SetCurrentState")()); }
			ScriptFunction PlayerScoredFlag() { mixin(MGF!("mPlayerScoredFlag", "Function TribesGame.TrMusicManager.PlayerScoredFlag")()); }
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
		TrPlayerController m_PlayerOwner() { mixin(MGPC!("TrPlayerController", 476)()); }
		float m_fMusicVolume() { mixin(MGPC!("float", 480)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_CurrentTrack'!
		TrMusicManager.ETgMusicState m_CurrentState() { mixin(MGPC!("TrMusicManager.ETgMusicState", 488)()); }
		TrMusicManager.ETgMusicState m_PendingState() { mixin(MGPC!("TrMusicManager.ETgMusicState", 489)()); }
		float m_fStingerVolumeMultiplier() { mixin(MGPC!("float", 484)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_MusicTracks'!
		float m_CTFTeamScores() { mixin(MGPC!("float", 532)()); }
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
