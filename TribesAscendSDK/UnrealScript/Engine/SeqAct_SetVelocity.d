module UnrealScript.Engine.SeqAct_SetVelocity;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetVelocity : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			float VelocityMag() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			Vector VelocityDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bVelocityRelativeToActorRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bVelocityRelativeToActorRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25947], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
