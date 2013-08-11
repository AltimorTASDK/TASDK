module UnrealScript.Engine.PathTargetPoint;

import ScriptClasses;
import UnrealScript.Engine.Keypoint;

extern(C++) interface PathTargetPoint : Keypoint
{
	final bool ShouldBeHiddenBySHOW_NavigationNodes()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24034], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
