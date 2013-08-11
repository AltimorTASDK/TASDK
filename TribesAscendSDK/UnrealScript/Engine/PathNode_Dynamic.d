module UnrealScript.Engine.PathNode_Dynamic;

import ScriptClasses;
import UnrealScript.Engine.PathNode;

extern(C++) interface PathNode_Dynamic : PathNode
{
public extern(D):
	final ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24030], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
