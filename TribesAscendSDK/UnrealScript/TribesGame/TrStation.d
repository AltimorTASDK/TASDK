module UnrealScript.TribesGame.TrStation;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrStation")); }
	private static __gshared TrStation mDefaultProperties;
	@property final static TrStation DefaultProperties() { mixin(MGDPC("TrStation", "TrStation TribesGame.Default__TrStation")); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrStation.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function TribesGame.TrStation.ReplicatedEvent")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function TribesGame.TrStation.Destroyed")); }
			ScriptFunction PawnEnteredStation() { mixin(MGF("mPawnEnteredStation", "Function TribesGame.TrStation.PawnEnteredStation")); }
			ScriptFunction PawnLeftStation() { mixin(MGF("mPawnLeftStation", "Function TribesGame.TrStation.PawnLeftStation")); }
			ScriptFunction PlayStationEnteredEffects() { mixin(MGF("mPlayStationEnteredEffects", "Function TribesGame.TrStation.PlayStationEnteredEffects")); }
			ScriptFunction PlayStationLeftEffects() { mixin(MGF("mPlayStationLeftEffects", "Function TribesGame.TrStation.PlayStationLeftEffects")); }
			ScriptFunction BlocksLineChecksFromSourceActor() { mixin(MGF("mBlocksLineChecksFromSourceActor", "Function TribesGame.TrStation.BlocksLineChecksFromSourceActor")); }
		}
	}
	@property final auto ref
	{
		TrCaHCapturePoint m_OwningCaHCapturePoint() { mixin(MGPC("TrCaHCapturePoint", 1392)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_StationLeftAudioComponent'!
		SoundCue m_StationLeftSoundCue() { mixin(MGPC("SoundCue", 1384)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_StationEnteredAudioComponent'!
		SoundCue m_StationEnteredSoundCue() { mixin(MGPC("SoundCue", 1376)); }
		ScriptClass StationCollisionClass() { mixin(MGPC("ScriptClass", 1372)); }
		TrPawn r_CurrentPawn() { mixin(MGPC("TrPawn", 1368)); }
		TrStationCollision m_Collision() { mixin(MGPC("TrStationCollision", 1364)); }
		float m_fStationZOffset() { mixin(MGPC("float", 1360)); }
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
