module UnrealScript.TribesGame.TrMusicManager;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Info;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrMusicManager : Info
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100250], cast(void*)0, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* CreateNewTrack(SoundCue MusicCue)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = MusicCue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100251], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void StartMusic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100256], cast(void*)0, cast(void*)0);
	}
	void SetStateBasedOnGameState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100258], cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100263], params.ptr, cast(void*)0);
	}
	void MusicEvent(int NewEventIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewEventIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100267], params.ptr, cast(void*)0);
	}
	void SetPendingState(TrMusicManager.ETgMusicState NewState)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrMusicManager.ETgMusicState*)params.ptr = NewState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100273], params.ptr, cast(void*)0);
	}
	void SetCurrentState(TrMusicManager.ETgMusicState NewState)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrMusicManager.ETgMusicState*)params.ptr = NewState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100275], params.ptr, cast(void*)0);
	}
	void PlayerScoredFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100280], cast(void*)0, cast(void*)0);
	}
}
