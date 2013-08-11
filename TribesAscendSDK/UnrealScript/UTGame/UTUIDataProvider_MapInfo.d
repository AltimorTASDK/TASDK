module UnrealScript.UTGame.UTUIDataProvider_MapInfo;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_MapInfo;

extern(C++) interface UTUIDataProvider_MapInfo : UDKUIDataProvider_MapInfo
{
	final bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38662], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool SupportedByCurrentGameMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49589], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
