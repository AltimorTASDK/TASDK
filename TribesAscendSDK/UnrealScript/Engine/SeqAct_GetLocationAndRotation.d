module UnrealScript.Engine.SeqAct_GetLocationAndRotation;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetLocationAndRotation : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		ScriptName SocketOrBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
		Vector Rotation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 256); }
		Vector RotationVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 244); }
		Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25693], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
