module UnrealScript.Engine.NavMeshPath_MinDistBetweenSpecsOfType;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;
import UnrealScript.Engine.Pylon;

extern(C++) interface NavMeshPath_MinDistBetweenSpecsOfType : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshPath_MinDistBetweenSpecsOfType")()); }
	private static __gshared NavMeshPath_MinDistBetweenSpecsOfType mDefaultProperties;
	@property final static NavMeshPath_MinDistBetweenSpecsOfType DefaultProperties() { mixin(MGDPC!(NavMeshPath_MinDistBetweenSpecsOfType, "NavMeshPath_MinDistBetweenSpecsOfType Engine.Default__NavMeshPath_MinDistBetweenSpecsOfType")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEnforceMinDist;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction EnforceMinDist() { mixin(MGF!("mEnforceMinDist", "Function Engine.NavMeshPath_MinDistBetweenSpecsOfType.EnforceMinDist")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.NavMeshPath_MinDistBetweenSpecsOfType.Recycle")()); }
		}
	}
	@property final auto ref
	{
		Pylon.ENavMeshEdgeType EdgeType() { mixin(MGPC!(Pylon.ENavMeshEdgeType, 96)()); }
		Vector InitLocation() { mixin(MGPC!(Vector, 84)()); }
		float MinDistBetweenEdgeTypes() { mixin(MGPC!(float, 80)()); }
	}
final:
	static bool EnforceMinDist(NavigationHandle NavHandle, float InMinDist, Pylon.ENavMeshEdgeType InEdgeType, Vector LastLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(float*)&params[4] = InMinDist;
		*cast(Pylon.ENavMeshEdgeType*)&params[8] = InEdgeType;
		*cast(Vector*)&params[12] = LastLocation;
		StaticClass.ProcessEvent(Functions.EnforceMinDist, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
