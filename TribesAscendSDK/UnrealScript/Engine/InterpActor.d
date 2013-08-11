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
	struct CheckpointRecord
	{
		private ubyte __buffer__[32];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18379], cast(void*)0, cast(void*)0);
	}
	void SetShadowParentOnAllAttachedComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18380], cast(void*)0, cast(void*)0);
	}
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18381], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18395], params.ptr, cast(void*)0);
	}
	void Attach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18399], params.ptr, cast(void*)0);
	}
	void Detach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18403], params.ptr, cast(void*)0);
	}
	void Restart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18407], cast(void*)0, cast(void*)0);
	}
	void FinishedOpen()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18409], cast(void*)0, cast(void*)0);
	}
	void PlayMovingSound(bool bClosing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bClosing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18412], params.ptr, cast(void*)0);
	}
	void InterpolationStarted(SeqAct_Interp InterpAction, InterpGroupInst GroupInst)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		*cast(InterpGroupInst*)&params[4] = GroupInst;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18416], params.ptr, cast(void*)0);
	}
	void InterpolationFinished(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18420], params.ptr, cast(void*)0);
	}
	void InterpolationChanged(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18427], params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18429], cast(void*)0, cast(void*)0);
	}
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18430], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(InterpActor.CheckpointRecord* Record)
	{
		ubyte params[32];
		params[] = 0;
		*cast(InterpActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18432], params.ptr, cast(void*)0);
		*Record = *cast(InterpActor.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(InterpActor.CheckpointRecord* Record)
	{
		ubyte params[32];
		params[] = 0;
		*cast(InterpActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18434], params.ptr, cast(void*)0);
		*Record = *cast(InterpActor.CheckpointRecord*)params.ptr;
	}
}
