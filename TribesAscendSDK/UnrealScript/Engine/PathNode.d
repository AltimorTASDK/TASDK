module UnrealScript.Engine.PathNode;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;

extern(C++) interface PathNode : NavigationPoint
{
public extern(D):
	final ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24026], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
