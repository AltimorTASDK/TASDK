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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrStation")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mDestroyed;
			ScriptFunction mPawnEnteredStation;
			ScriptFunction mPawnLeftStation;
			ScriptFunction mPlayStationEnteredEffects;
			ScriptFunction mPlayStationLeftEffects;
			ScriptFunction mBlocksLineChecksFromSourceActor;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStation.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStation.ReplicatedEvent")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStation.Destroyed")); }
			ScriptFunction PawnEnteredStation() { return mPawnEnteredStation ? mPawnEnteredStation : (mPawnEnteredStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStation.PawnEnteredStation")); }
			ScriptFunction PawnLeftStation() { return mPawnLeftStation ? mPawnLeftStation : (mPawnLeftStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStation.PawnLeftStation")); }
			ScriptFunction PlayStationEnteredEffects() { return mPlayStationEnteredEffects ? mPlayStationEnteredEffects : (mPlayStationEnteredEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStation.PlayStationEnteredEffects")); }
			ScriptFunction PlayStationLeftEffects() { return mPlayStationLeftEffects ? mPlayStationLeftEffects : (mPlayStationLeftEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStation.PlayStationLeftEffects")); }
			ScriptFunction BlocksLineChecksFromSourceActor() { return mBlocksLineChecksFromSourceActor ? mBlocksLineChecksFromSourceActor : (mBlocksLineChecksFromSourceActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStation.BlocksLineChecksFromSourceActor")); }
		}
	}
	@property final auto ref
	{
		TrCaHCapturePoint m_OwningCaHCapturePoint() { return *cast(TrCaHCapturePoint*)(cast(size_t)cast(void*)this + 1392); }
		SoundCue m_StationLeftSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1384); }
		SoundCue m_StationEnteredSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1376); }
		ScriptClass StationCollisionClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1372); }
		TrPawn r_CurrentPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 1368); }
		TrStationCollision m_Collision() { return *cast(TrStationCollision*)(cast(size_t)cast(void*)this + 1364); }
		float m_fStationZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1360); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PawnEnteredStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredStation, params.ptr, cast(void*)0);
	}
	void PawnLeftStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeftStation, params.ptr, cast(void*)0);
	}
	void PlayStationEnteredEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationEnteredEffects, cast(void*)0, cast(void*)0);
	}
	void PlayStationLeftEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationLeftEffects, cast(void*)0, cast(void*)0);
	}
	bool BlocksLineChecksFromSourceActor(Actor SourceActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = SourceActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.BlocksLineChecksFromSourceActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
