module UnrealScript.TribesGame.TrDevice_SN7;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_SN7 : TrDevice
{
	final Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86137], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
}
