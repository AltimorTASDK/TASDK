module UnrealScript.TribesGame.TrStation;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrCaHCapturePoint;
import UnrealScript.TribesGame.TrStationCollision;

extern(C++) interface TrStation : TrGameObjective
{
	public @property final auto ref TrCaHCapturePoint m_OwningCaHCapturePoint() { return *cast(TrCaHCapturePoint*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref SoundCue m_StationLeftSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref SoundCue m_StationEnteredSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1376); }
	public @property final auto ref ScriptClass StationCollisionClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1372); }
	public @property final auto ref TrPawn r_CurrentPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 1368); }
	public @property final auto ref TrStationCollision m_Collision() { return *cast(TrStationCollision*)(cast(size_t)cast(void*)this + 1364); }
	public @property final auto ref float m_fStationZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1360); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98171], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98172], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98174], cast(void*)0, cast(void*)0);
	}
	final void PawnEnteredStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98175], params.ptr, cast(void*)0);
	}
	final void PawnLeftStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98178], params.ptr, cast(void*)0);
	}
	final void PlayStationEnteredEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98181], cast(void*)0, cast(void*)0);
	}
	final void PlayStationLeftEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98184], cast(void*)0, cast(void*)0);
	}
	final bool BlocksLineChecksFromSourceActor(Actor SourceActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = SourceActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98185], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
