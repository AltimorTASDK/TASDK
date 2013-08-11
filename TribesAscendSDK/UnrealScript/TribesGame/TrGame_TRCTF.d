module UnrealScript.TribesGame.TrGame_TRCTF;

import ScriptClasses;
import UnrealScript.TribesGame.TrFlagCTF;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.TribesGame.TrFlagBase;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TRCTF : TrGame
{
	public @property final auto ref TrFlagCTF m_Flags() { return *cast(TrFlagCTF*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref ScriptClass AnnouncerMessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1464); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90617], cast(void*)0, cast(void*)0);
	}
	final void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90619], cast(void*)0, cast(void*)0);
	}
	final int GetHandicapNeed(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90621], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool GetLocationFor(Pawn StatusPawn, Actor* LocationObject, int* MessageIndex, int LocationSpeechOffset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = StatusPawn;
		*cast(Actor*)&params[4] = *LocationObject;
		*cast(int*)&params[8] = *MessageIndex;
		*cast(int*)&params[12] = LocationSpeechOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90624], params.ptr, cast(void*)0);
		*LocationObject = *cast(Actor*)&params[4];
		*MessageIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[16];
	}
	final void RegisterFlag(UTCarriedObject F, int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = F;
		*cast(int*)&params[4] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90633], params.ptr, cast(void*)0);
	}
	final bool NearGoal(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90637], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool WantFastSpawnFor(AIController B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90641], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90644], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void ScoreFlag(Controller Scorer, TrFlagBase theFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Scorer;
		*cast(TrFlagBase*)&params[4] = theFlag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90650], params.ptr, cast(void*)0);
	}
	final void ViewObjective(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90672], params.ptr, cast(void*)0);
	}
	final Actor GetAutoObjectiveFor(UTPlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90675], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final void AnnounceScore(int ScoringTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ScoringTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90678], params.ptr, cast(void*)0);
	}
	final bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90683], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90686], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
