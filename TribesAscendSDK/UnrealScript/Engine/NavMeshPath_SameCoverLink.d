module UnrealScript.Engine.NavMeshPath_SameCoverLink;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_SameCoverLink : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshPath_SameCoverLink")); }
	private static __gshared NavMeshPath_SameCoverLink mDefaultProperties;
	@property final static NavMeshPath_SameCoverLink DefaultProperties() { mixin(MGDPC("NavMeshPath_SameCoverLink", "NavMeshPath_SameCoverLink Engine.Default__NavMeshPath_SameCoverLink")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSameCoverLink;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction SameCoverLink() { mixin(MGF("mSameCoverLink", "Function Engine.NavMeshPath_SameCoverLink.SameCoverLink")); }
			ScriptFunction Recycle() { mixin(MGF("mRecycle", "Function Engine.NavMeshPath_SameCoverLink.Recycle")); }
		}
	}
	@property final auto ref CoverLink TestLink() { mixin(MGPC("CoverLink", 80)); }
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
