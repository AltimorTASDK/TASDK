module UnrealScript.UTGame.UTRotatingDroppedPickup;

import ScriptClasses;
import UnrealScript.UTGame.UTDroppedPickup;

extern(C++) interface UTRotatingDroppedPickup : UTDroppedPickup
{
public extern(D):
	@property final auto ref float YawRotationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48999], params.ptr, cast(void*)0);
	}
}
