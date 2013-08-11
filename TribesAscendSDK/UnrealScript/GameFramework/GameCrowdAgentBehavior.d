module UnrealScript.GameFramework.GameCrowdAgentBehavior;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface GameCrowdAgentBehavior : UObject
{
	public @property final auto ref Actor ActionTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref float MaxPlayerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref GameCrowdAgent MyAgent() { return *cast(GameCrowdAgent*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float TimeToStopPropagatingViralBehavior() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float DurationOfViralBehaviorPropagation() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool bIsPanicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
	public @property final bool bIsPanicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
	public @property final bool bPassOnIsViralBehaviorFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool bPassOnIsViralBehaviorFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool bIsViralBehavior() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool bIsViralBehavior(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool bFaceActionTargetFirst() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bFaceActionTargetFirst(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool bIdleBehavior() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bIdleBehavior(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	final bool AllowBehaviorAt(GameCrowdDestination Destination)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Destination;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30493], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AllowThisDestination(GameCrowdDestination Destination)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Destination;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30523], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CanBeUsedBy(GameCrowdAgent Agent, Vector CameraLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		*cast(Vector*)&params[4] = CameraLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30959], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final Actor GetDestinationActor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31046], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31095], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool ShouldEndIdle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31106], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31108], params.ptr, cast(void*)0);
	}
	final void FinishedTargetRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31112], cast(void*)0, cast(void*)0);
	}
	final bool HandleMovement()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31113], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void InitBehavior(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31115], params.ptr, cast(void*)0);
	}
	final void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31117], cast(void*)0, cast(void*)0);
	}
	final void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31118], params.ptr, cast(void*)0);
	}
	final void ChangingDestination(GameCrowdDestination NewDest)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = NewDest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31122], params.ptr, cast(void*)0);
	}
	final void ActivatedBy(Actor NewActionTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActionTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31124], params.ptr, cast(void*)0);
	}
	final void PropagateViralBehaviorTo(GameCrowdAgent OtherAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = OtherAgent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31126], params.ptr, cast(void*)0);
	}
}
