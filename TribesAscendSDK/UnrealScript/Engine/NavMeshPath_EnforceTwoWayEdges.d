module UnrealScript.Engine.NavMeshPath_EnforceTwoWayEdges;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_EnforceTwoWayEdges : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshPath_EnforceTwoWayEdges")); }
	private static __gshared NavMeshPath_EnforceTwoWayEdges mDefaultProperties;
	@property final static NavMeshPath_EnforceTwoWayEdges DefaultProperties() { mixin(MGDPC("NavMeshPath_EnforceTwoWayEdges", "NavMeshPath_EnforceTwoWayEdges Engine.Default__NavMeshPath_EnforceTwoWayEdges")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mEnforceTwoWayEdges;
		public @property static final ScriptFunction EnforceTwoWayEdges() { mixin(MGF("mEnforceTwoWayEdges", "Function Engine.NavMeshPath_EnforceTwoWayEdges.EnforceTwoWayEdges")); }
	}
	final static bool EnforceTwoWayEdges(NavigationHandle NavHandle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		StaticClass.ProcessEvent(Functions.EnforceTwoWayEdges, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
