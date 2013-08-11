module UnrealScript.Engine.RB_LineImpulseActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;

extern(C++) interface RB_LineImpulseActor : RigidBodyBase
{
	public @property final auto ref ubyte ImpulseCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 492); }
	public @property final bool bCauseFracture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x4) != 0; }
	public @property final bool bCauseFracture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x4; } return val; }
	public @property final bool bStopAtFirstHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x2) != 0; }
	public @property final bool bStopAtFirstHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x2; } return val; }
	public @property final bool bVelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
	public @property final bool bVelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	public @property final auto ref float ImpulseRange() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref float ImpulseStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	final void FireLineImpulse()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25280], cast(void*)0, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25281], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25283], params.ptr, cast(void*)0);
	}
}
