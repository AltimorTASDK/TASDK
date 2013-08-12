module UnrealScript.Engine.NavMeshPath_AlongLine;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_AlongLine : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshPath_AlongLine")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAlongLine;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction AlongLine() { return mAlongLine ? mAlongLine : (mAlongLine = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_AlongLine.AlongLine")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_AlongLine.Recycle")); }
		}
	}
	@property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
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
