module UnrealScript.Engine.InterpActor;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpActor")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.PostBeginPlay")); }
			ScriptFunction SetShadowParentOnAllAttachedComponents() { return mSetShadowParentOnAllAttachedComponents ? mSetShadowParentOnAllAttachedComponents : (mSetShadowParentOnAllAttachedComponents = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.SetShadowParentOnAllAttachedComponents")); }
			ScriptFunction EncroachingOn() { return mEncroachingOn ? mEncroachingOn : (mEncroachingOn = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.EncroachingOn")); }
			ScriptFunction RanInto() { return mRanInto ? mRanInto : (mRanInto = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.RanInto")); }
			ScriptFunction Attach() { return mAttach ? mAttach : (mAttach = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.Attach")); }
			ScriptFunction Detach() { return mDetach ? mDetach : (mDetach = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.Detach")); }
			ScriptFunction Restart() { return mRestart ? mRestart : (mRestart = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.Restart")); }
			ScriptFunction FinishedOpen() { return mFinishedOpen ? mFinishedOpen : (mFinishedOpen = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.FinishedOpen")); }
			ScriptFunction PlayMovingSound() { return mPlayMovingSound ? mPlayMovingSound : (mPlayMovingSound = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.PlayMovingSound")); }
			ScriptFunction InterpolationStarted() { return mInterpolationStarted ? mInterpolationStarted : (mInterpolationStarted = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.InterpolationStarted")); }
			ScriptFunction InterpolationFinished() { return mInterpolationFinished ? mInterpolationFinished : (mInterpolationFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.InterpolationFinished")); }
			ScriptFunction InterpolationChanged() { return mInterpolationChanged ? mInterpolationChanged : (mInterpolationChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.InterpolationChanged")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.ShutDown")); }
			ScriptFunction ShouldSaveForCheckpoint() { return mShouldSaveForCheckpoint ? mShouldSaveForCheckpoint : (mShouldSaveForCheckpoint = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.ShouldSaveForCheckpoint")); }
			ScriptFunction CreateCheckpointRecord() { return mCreateCheckpointRecord ? mCreateCheckpointRecord : (mCreateCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { return mApplyCheckpointRecord ? mApplyCheckpointRecord : (mApplyCheckpointRecord = ScriptObject.Find!(ScriptFunction)("Function Engine.InterpActor.ApplyCheckpointRecord")); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpActor.CheckpointRecord")); }
		@property final
		{
			auto ref
			{
				Actor.ECollisionType CollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)&this + 24); }
				Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
				Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
			}
			bool bNeedsPositionReplication() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
			bool bNeedsPositionReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
			bool bIsShutdown() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bIsShutdown(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			NavigationPoint MyMarker() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 536); }
			SoundCue ClosedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 568); }
			SoundCue ClosingAmbientSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 564); }
			SoundCue CloseSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 560); }
			SoundCue OpenedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 556); }
			SoundCue OpeningAmbientSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 552); }
			SoundCue OpenSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 548); }
			float StayOpenTime() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			float MaxZVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
		}
		bool bMonitorMover() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool bMonitorMover(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool bIsLift() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80) != 0; }
		bool bIsLift(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80; } return val; }
		bool bShouldShadowParentAllAttachedActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40) != 0; }
		bool bShouldShadowParentAllAttachedActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40; } return val; }
		bool bStopOnEncroach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20) != 0; }
		bool bStopOnEncroach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20; } return val; }
		bool bContinueOnEncroachPhysicsObject() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10) != 0; }
		bool bContinueOnEncroachPhysicsObject(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10; } return val; }
		bool bDestroyProjectilesOnEncroach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
		bool bDestroyProjectilesOnEncroach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
		bool bMonitorZVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool bMonitorZVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool bShouldSaveForCheckpoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bShouldSaveForCheckpoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
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
	void CreateCheckpointRecord(InterpActor.CheckpointRecord* Record)
	{
		ubyte params[32];
		params[] = 0;
		*cast(InterpActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(InterpActor.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(InterpActor.CheckpointRecord* Record)
	{
		ubyte params[32];
		params[] = 0;
		*cast(InterpActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(InterpActor.CheckpointRecord*)params.ptr;
	}
}
