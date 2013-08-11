module UnrealScript.Engine.RB_Thruster;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;

extern(C++) interface RB_Thruster : RigidBodyBase
{
public extern(D):
	@property final
	{
		@property final auto ref float ThrustStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		bool bThrustEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bThrustEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25354], params.ptr, cast(void*)0);
	}
}
