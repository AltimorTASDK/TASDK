module UnrealScript.Engine.NavMeshPath_SameCoverLink;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_SameCoverLink : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshPath_SameCoverLink")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSameCoverLink;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction SameCoverLink() { return mSameCoverLink ? mSameCoverLink : (mSameCoverLink = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_SameCoverLink.SameCoverLink")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_SameCoverLink.Recycle")); }
		}
	}
	@property final auto ref CoverLink TestLink() { return *cast(CoverLink*)(cast(size_t)cast(void*)this + 80); }
final:
	static void SameCoverLink(NavigationHandle NavHandle, CoverLink InLink)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(CoverLink*)&params[4] = InLink;
		StaticClass.ProcessEvent(Functions.SameCoverLink, params.ptr, cast(void*)0);
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
