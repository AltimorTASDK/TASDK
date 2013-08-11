module UnrealScript.Engine.OnlineStats;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStats : UObject
{
	public @property final auto ref ScriptArray!(Settings.StringIdToStringMapping) ViewIdMappings() { return *cast(ScriptArray!(Settings.StringIdToStringMapping)*)(cast(size_t)cast(void*)this + 60); }
	final bool GetViewId(ScriptName ViewName, int* ViewId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ViewName;
		*cast(int*)&params[8] = *ViewId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22749], params.ptr, cast(void*)0);
		*ViewId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	final ScriptName GetViewName(int ViewId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ViewId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22753], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
}
