module UnrealScript.Engine.PotentialClimbWatcher;

import ScriptClasses;
import UnrealScript.Engine.Info;

extern(C++) interface PotentialClimbWatcher : Info
{
public extern(D):
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24758], params.ptr, cast(void*)0);
	}
}
