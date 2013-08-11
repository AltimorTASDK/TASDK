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
	extern(D) struct CheckpointRecord
	{
		public @property final bool bNeedsPositionReplication() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
		public @property final bool bNeedsPositionReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
		private ubyte __bNeedsPositionReplication[4];
		public @property final bool bIsShutdown() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bIsShutdown(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bIsShutdown[4];
		public @property final bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bHidden[4];
		public @property final auto ref Actor.ECollisionType CollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)&this + 24); }
		private ubyte __CollisionType[1];
		public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
		private ubyte __Rotation[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Location[12];
	}
	public @property final bool bMonitorMover() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
	public @property final bool bMonitorMover(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
	public @property final auto ref NavigationPoint MyMarker() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref SoundCue ClosedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref SoundCue ClosingAmbientSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref SoundCue CloseSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref SoundCue OpenedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref SoundCue OpeningAmbientSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref SoundCue OpenSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref float StayOpenTime() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref float MaxZVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
	public @property final bool bIsLift() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80) != 0; }
	public @property final bool bIsLift(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80; } return val; }
	public @property final bool bShouldShadowParentAllAttachedActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40) != 0; }
	public @property final bool bShouldShadowParentAllAttachedActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40; } return val; }
	public @property final bool bStopOnEncroach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20) != 0; }
	public @property final bool bStopOnEncroach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20; } return val; }
	public @property final bool bContinueOnEncroachPhysicsObject() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10) != 0; }
	public @property final bool bContinueOnEncroachPhysicsObject(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10; } return val; }
	public @property final bool bDestroyProjectilesOnEncroach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
	public @property final bool bDestroyProjectilesOnEncroach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
	public @property final bool bMonitorZVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
	public @property final bool bMonitorZVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
	public @property final bool bShouldSaveForCheckpoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
	public @property final bool bShouldSaveForCheckpoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18379], cast(void*)0, cast(void*)0);
	}
	final void SetShadowParentOnAllAttachedComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18380], cast(void*)0, cast(void*)0);
	}
	final bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18381], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18395], params.ptr, cast(void*)0);
	}
	final void Attach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18399], params.ptr, cast(void*)0);
	}
	final void Detach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18403], params.ptr, cast(void*)0);
	}
	final void Restart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18407], cast(void*)0, cast(void*)0);
	}
	final void FinishedOpen()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18409], cast(void*)0, cast(void*)0);
	}
	final void PlayMovingSound(bool bClosing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bClosing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18412], params.ptr, cast(void*)0);
	}
	final void InterpolationStarted(SeqAct_Interp InterpAction, InterpGroupInst GroupInst)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		*cast(InterpGroupInst*)&params[4] = GroupInst;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18416], params.ptr, cast(void*)0);
	}
	final void InterpolationFinished(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18420], params.ptr, cast(void*)0);
	}
	final void InterpolationChanged(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18427], params.ptr, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18429], cast(void*)0, cast(void*)0);
	}
	final bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18430], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CreateCheckpointRecord(InterpActor.CheckpointRecord* Record)
	{
		ubyte params[32];
		params[] = 0;
		*cast(InterpActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18432], params.ptr, cast(void*)0);
		*Record = *cast(InterpActor.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(InterpActor.CheckpointRecord* Record)
	{
		ubyte params[32];
		params[] = 0;
		*cast(InterpActor.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18434], params.ptr, cast(void*)0);
		*Record = *cast(InterpActor.CheckpointRecord*)params.ptr;
	}
}
