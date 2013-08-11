module UnrealScript.UTGame.UTDecalManager;

import ScriptClasses;
import UnrealScript.Engine.DecalManager;

extern(C++) interface UTDecalManager : DecalManager
{
public extern(D):
	final bool CanSpawnDecals()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47046], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
