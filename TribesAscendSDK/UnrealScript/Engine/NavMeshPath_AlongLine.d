module UnrealScript.Engine.NavMeshPath_AlongLine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_AlongLine : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshPath_AlongLine")()); }
	private static __gshared NavMeshPath_AlongLine mDefaultProperties;
	@property final static NavMeshPath_AlongLine DefaultProperties() { mixin(MGDPC!(NavMeshPath_AlongLine, "NavMeshPath_AlongLine Engine.Default__NavMeshPath_AlongLine")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAlongLine;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction AlongLine() { mixin(MGF!("mAlongLine", "Function Engine.NavMeshPath_AlongLine.AlongLine")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.NavMeshPath_AlongLine.Recycle")()); }
		}
	}
	@property final auto ref Vector Direction() { mixin(MGPC!("Vector", 80)()); }
final:
	static bool AlongLine(NavigationHandle NavHandle, Vector Dir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = Dir;
		StaticClass.ProcessEvent(Functions.AlongLine, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
