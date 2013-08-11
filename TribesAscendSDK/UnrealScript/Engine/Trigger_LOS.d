module UnrealScript.Engine.Trigger_LOS;

import ScriptClasses;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.PlayerController;

extern(C++) interface Trigger_LOS : Trigger
{
public extern(D):
	@property final auto ref ScriptArray!(PlayerController) PCsWithLOS() { return *cast(ScriptArray!(PlayerController)*)(cast(size_t)cast(void*)this + 488); }
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28045], params.ptr, cast(void*)0);
	}
}
