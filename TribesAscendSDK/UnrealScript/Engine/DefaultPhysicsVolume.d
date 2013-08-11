module UnrealScript.Engine.DefaultPhysicsVolume;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface DefaultPhysicsVolume : PhysicsVolume
{
public extern(D):
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14476], cast(void*)0, cast(void*)0);
	}
}
