module UnrealScript.Engine.InterpActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DynamicSMActor;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroupInst;

extern(C++) interface InterpActor : DynamicSMActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpActor")()); }
	private static __gshared InterpActor mDefaultProperties;
	@property final static InterpActor DefaultProperties() { mixin(MGDPC!(InterpActor, "InterpActor Engine.Default__InterpActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetShadowParentOnAllAttachedComponents;
			ScriptFunction mEncroachingOn;
			ScriptFunction mRanInto;
			ScriptFunction mAttach;
			ScriptFunction mDetach;
			ScriptFunction mRestart;
			ScriptFunction mFinishedOpen;
			ScriptFunction mPlayMovingSound;
			ScriptFunction mInterpolationStarted;
			ScriptFunction mInterpolationFinished;
			ScriptFunction mInterpolationChanged;
			ScriptFunction mShutDown;
			ScriptFunction mShouldSaveForCheckpoint;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.InterpActor.PostBeginPlay")()); }
			ScriptFunction SetShadowParentOnAllAttachedComponents() { mixin(MGF!("mSetShadowParentOnAllAttachedComponents", "Function Engine.InterpActor.SetShadowParentOnAllAttachedComponents")()); }
			ScriptFunction EncroachingOn() { mixin(MGF!("mEncroachingOn", "Function Engine.InterpActor.EncroachingOn")()); }
			ScriptFunction RanInto() { mixin(MGF!("mRanInto", "Function Engine.InterpActor.RanInto")()); }
			ScriptFunction Attach() { mixin(MGF!("mAttach", "Function Engine.InterpActor.Attach")()); }
			ScriptFunction Detach() { mixin(MGF!("mDetach", "Function Engine.InterpActor.Detach")()); }
			ScriptFunction Restart() { mixin(MGF!("mRestart", "Function Engine.InterpActor.Restart")()); }
			ScriptFunction FinishedOpen() { mixin(MGF!("mFinishedOpen", "Function Engine.InterpActor.FinishedOpen")()); }
			ScriptFunction PlayMovingSound() { mixin(MGF!("mPlayMovingSound", "Function Engine.InterpActor.PlayMovingSound")()); }
			ScriptFunction InterpolationStarted() { mixin(MGF!("mInterpolationStarted", "Function Engine.InterpActor.InterpolationStarted")()); }
			ScriptFunction InterpolationFinished() { mixin(MGF!("mInterpolationFinished", "Function Engine.InterpActor.InterpolationFinished")()); }
			ScriptFunction InterpolationChanged() { mixin(MGF!("mInterpolationChanged", "Function Engine.InterpActor.InterpolationChanged")()); }
			ScriptFunction ShutDown() { mixin(MGF!("mShutDown", "Function Engine.InterpActor.ShutDown")()); }
			ScriptFunction ShouldSaveForCheckpoint() { mixin(MGF!("mShouldSaveForCheckpoint", "Function Engine.InterpActor.ShouldSaveForCheckpoint")()); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF!("mCreateCheckpointRecord", "Function Engine.InterpActor.CreateCheckpointRecord")()); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF!("mApplyCheckpointRecord", "Function Engine.InterpActor.ApplyCheckpointRecord")()); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpActor.CheckpointRecord")()); }
		@property final
		{
			auto ref
			{
				Actor.ECollisionType CollisionType() { mixin(MGPS!(Actor.ECollisionType, 24)()); }
				Rotator Rotation() { mixin(MGPS!(Rotator, 12)()); }
				Vector Location() { mixin(MGPS!(Vector, 0)()); }
			}
			bool bNeedsPositionReplication() { mixin(MGBPS!(28, 0x4)()); }
			bool bNeedsPositionReplication(bool val) { mixin(MSBPS!(28, 0x4)()); }
			bool bIsShutdown() { mixin(MGBPS!(28, 0x2)()); }
			bool bIsShutdown(bool val) { mixin(MSBPS!(28, 0x2)()); }
			bool bHidden() { mixin(MGBPS!(28, 0x1)()); }
			bool bHidden(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			NavigationPoint MyMarker() { mixin(MGPC!(NavigationPoint, 536)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AmbientSoundComponent'!
			SoundCue ClosedSound() { mixin(MGPC!(SoundCue, 568)()); }
			SoundCue ClosingAmbientSound() { mixin(MGPC!(SoundCue, 564)()); }
			SoundCue CloseSound() { mixin(MGPC!(SoundCue, 560)()); }
			SoundCue OpenedSound() { mixin(MGPC!(SoundCue, 556)()); }
			SoundCue OpeningAmbientSound() { mixin(MGPC!(SoundCue, 552)()); }
			SoundCue OpenSound() { mixin(MGPC!(SoundCue, 548)()); }
			float StayOpenTime() { mixin(MGPC!(float, 544)()); }
			float MaxZVelocity() { mixin(MGPC!(float, 540)()); }
		}
		bool bMonitorMover() { mixin(MGBPC!(532, 0x2)()); }
		bool bMonitorMover(bool val) { mixin(MSBPC!(532, 0x2)()); }
		bool bIsLift() { mixin(MGBPC!(532, 0x80)()); }
		bool bIsLift(bool val) { mixin(MSBPC!(532, 0x80)()); }
		bool bShouldShadowParentAllAttachedActors() { mixin(MGBPC!(532, 0x40)()); }
		bool bShouldShadowParentAllAttachedActors(bool val) { mixin(MSBPC!(532, 0x40)()); }
		bool bStopOnEncroach() { mixin(MGBPC!(532, 0x20)()); }
		bool bStopOnEncroach(bool val) { mixin(MSBPC!(532, 0x20)()); }
		bool bContinueOnEncroachPhysicsObject() { mixin(MGBPC!(532, 0x10)()); }
		bool bContinueOnEncroachPhysicsObject(bool val) { mixin(MSBPC!(532, 0x10)()); }
		bool bDestroyProjectilesOnEncroach() { mixin(MGBPC!(532, 0x8)()); }
		bool bDestroyProjectilesOnEncroach(bool val) { mixin(MSBPC!(532, 0x8)()); }
		bool bMonitorZVelocity() { mixin(MGBPC!(532, 0x4)()); }
		bool bMonitorZVelocity(bool val) { mixin(MSBPC!(532, 0x4)()); }
		bool bShouldSaveForCheckpoint() { mixin(MGBPC!(532, 0x1)()); }
		bool bShouldSaveForCheckpoint(bool val) { mixin(MSBPC!(532, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetShadowParentOnAllAttachedComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShadowParentOnAllAttachedComponents, cast(void*)0, cast(void*)0);
	}
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachingOn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RanInto, params.ptr, cast(void*)0);
	}
	void Attach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.Attach, params.ptr, cast(void*)0);
	}
	void Detach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.Detach, params.ptr, cast(void*)0);
	}
	void Restart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Restart, cast(void*)0, cast(void*)0);
	}
	void FinishedOpen()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishedOpen, cast(void*)0, cast(void*)0);
	}
	void PlayMovingSound(bool bClosing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bClosing;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayMovingSound, params.ptr, cast(void*)0);
	}
	void InterpolationStarted(SeqAct_Interp InterpAction, InterpGroupInst GroupInst)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		*cast(InterpGroupInst*)&params[4] = GroupInst;
		(cast(ScriptObject)this).ProcessEvent(Functions.InterpolationStarted, params.ptr, cast(void*)0);
	}
	void InterpolationFinished(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.InterpolationFinished, params.ptr, cast(void*)0);
	}
	void InterpolationChanged(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.InterpolationChanged, params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSaveForCheckpoint, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(ref InterpActor.CheckpointRecord Record)
	{
		ubyte params[32];
		params[] = 0;
		*cast(InterpActor.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(InterpActor.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref const InterpActor.CheckpointRecord Record)
	{
		ubyte params[32];
		params[] = 0;
		*cast(InterpActor.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(InterpActor.CheckpointRecord*)params.ptr;
	}
}
