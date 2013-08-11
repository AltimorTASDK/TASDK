module UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

import ScriptClasses;
import UnrealScript.GameFramework.SeqEvent_MobileBase;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface SeqEvent_MobileZoneBase : SeqEvent_MobileBase
{
public extern(D):
	@property final auto ref ScriptString TargetZoneName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
	final void AddToMobileInput(MobilePlayerInput MPI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = MPI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33027], params.ptr, cast(void*)0);
	}
}
