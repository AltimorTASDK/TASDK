module UnrealScript.Engine.RB_ConstraintActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.RB_ConstraintSetup;
import UnrealScript.Engine.SeqAct_ToggleConstraintDrive;
import UnrealScript.Engine.RigidBodyBase;
import UnrealScript.Engine.SeqAct_Destroy;

extern(C++) interface RB_ConstraintActor : RigidBodyBase
{
	public @property final auto ref Actor PulleyPivotActor2() { return *cast(Actor*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref Actor PulleyPivotActor1() { return *cast(Actor*)(cast(size_t)cast(void*)this + 496); }
	public @property final bool bUpdateActor2RefFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x4) != 0; }
	public @property final bool bUpdateActor2RefFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x4; } return val; }
	public @property final bool bUpdateActor1RefFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x2) != 0; }
	public @property final bool bUpdateActor1RefFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x2; } return val; }
	public @property final bool bDisableCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
	public @property final bool bDisableCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	public @property final auto ref RB_ConstraintInstance ConstraintInstance() { return *cast(RB_ConstraintInstance*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref RB_ConstraintSetup ConstraintSetup() { return *cast(RB_ConstraintSetup*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref Actor ConstraintActor2() { return *cast(Actor*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref Actor ConstraintActor1() { return *cast(Actor*)(cast(size_t)cast(void*)this + 476); }
	final void SetDisableCollision(bool NewDisableCollision)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewDisableCollision;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25143], params.ptr, cast(void*)0);
	}
	final void InitConstraint(Actor Actor1, Actor Actor2, ScriptName Actor1Bone, ScriptName Actor2Bone, float BreakThreshold)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Actor1;
		*cast(Actor*)&params[4] = Actor2;
		*cast(ScriptName*)&params[8] = Actor1Bone;
		*cast(ScriptName*)&params[16] = Actor2Bone;
		*cast(float*)&params[24] = BreakThreshold;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25145], params.ptr, cast(void*)0);
	}
	final void TermConstraint()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25151], cast(void*)0, cast(void*)0);
	}
	final void OnDestroy(SeqAct_Destroy Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Destroy*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25152], params.ptr, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25154], params.ptr, cast(void*)0);
	}
	final void OnToggleConstraintDrive(SeqAct_ToggleConstraintDrive Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleConstraintDrive*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25158], params.ptr, cast(void*)0);
	}
}
