module UnrealScript.Engine.NavMeshPath_MinDistBetweenSpecsOfType;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;
import UnrealScript.Engine.Pylon;

extern(C++) interface NavMeshPath_MinDistBetweenSpecsOfType : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshPath_MinDistBetweenSpecsOfType")); }
	private static __gshared NavMeshPath_MinDistBetweenSpecsOfType mDefaultProperties;
	@property final static NavMeshPath_MinDistBetweenSpecsOfType DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NavMeshPath_MinDistBetweenSpecsOfType)("NavMeshPath_MinDistBetweenSpecsOfType Engine.Default__NavMeshPath_MinDistBetweenSpecsOfType")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEnforceMinDist;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction EnforceMinDist() { return mEnforceMinDist ? mEnforceMinDist : (mEnforceMinDist = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_MinDistBetweenSpecsOfType.EnforceMinDist")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_MinDistBetweenSpecsOfType.Recycle")); }
		}
	}
	@property final auto ref
	{
		Pylon.ENavMeshEdgeType EdgeType() { return *cast(Pylon.ENavMeshEdgeType*)(cast(size_t)cast(void*)this + 96); }
		Vector InitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
		float MinDistBetweenEdgeTypes() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
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
