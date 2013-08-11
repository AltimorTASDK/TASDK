module UnrealScript.Engine.Surface;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Surface : UObject
{
	final float GetSurfaceWidth()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5028], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetSurfaceHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5030], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
