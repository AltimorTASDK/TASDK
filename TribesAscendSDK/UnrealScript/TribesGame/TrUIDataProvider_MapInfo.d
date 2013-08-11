module UnrealScript.TribesGame.TrUIDataProvider_MapInfo;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_MapInfo;

extern(C++) interface TrUIDataProvider_MapInfo : UDKUIDataProvider_MapInfo
{
public extern(D):
	final bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113383], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
