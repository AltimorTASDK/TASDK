module UnrealScript.Engine.SeqAct_GetLocationAndRotation;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetLocationAndRotation : SequenceAction
{
	public @property final auto ref ScriptName SocketOrBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref Vector Rotation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref Vector RotationVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25693], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
