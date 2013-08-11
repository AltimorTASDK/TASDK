module UnrealScript.Engine.TriggerVolume;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Volume;

extern(C++) interface TriggerVolume : Volume
{
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14906], cast(void*)0, cast(void*)0);
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14907], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
