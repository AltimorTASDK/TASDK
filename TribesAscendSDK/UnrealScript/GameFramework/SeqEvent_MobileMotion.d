module UnrealScript.GameFramework.SeqEvent_MobileMotion;

import ScriptClasses;
import UnrealScript.GameFramework.SeqEvent_MobileBase;

extern(C++) interface SeqEvent_MobileMotion : SeqEvent_MobileBase
{
public extern(D):
	@property final auto ref
	{
		float DeltaYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
		float DeltaPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
		float DeltaRoll() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
		float Yaw() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float Pitch() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float Roll() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33048], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
