module UnrealScript.Engine.OnlineStats;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineStats")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetViewId;
			ScriptFunction mGetViewName;
		}
		public @property static final
		{
			ScriptFunction GetViewId() { return mGetViewId ? mGetViewId : (mGetViewId = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStats.GetViewId")); }
			ScriptFunction GetViewName() { return mGetViewName ? mGetViewName : (mGetViewName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStats.GetViewName")); }
		}
	}
	@property final auto ref ScriptArray!(Settings.StringIdToStringMapping) ViewIdMappings() { return *cast(ScriptArray!(Settings.StringIdToStringMapping)*)(cast(size_t)cast(void*)this + 60); }
final:
	bool GetViewId(ScriptName ViewName, int* ViewId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ViewName;
		*cast(int*)&params[8] = *ViewId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewId, params.ptr, cast(void*)0);
		*ViewId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	ScriptName GetViewName(int ViewId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ViewId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
}
