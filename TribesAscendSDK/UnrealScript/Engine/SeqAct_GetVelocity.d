module UnrealScript.Engine.SeqAct_GetVelocity;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetVelocity : SequenceAction
{
	public @property final auto ref Vector VelocityVect() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float VelocityMag() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25702], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
