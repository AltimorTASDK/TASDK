module UnrealScript.GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBiasAgainstPolysWithinDistanceOfLocations;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction BiasAgainstPolysWithinDistanceOfLocations() { return mBiasAgainstPolysWithinDistanceOfLocations ? mBiasAgainstPolysWithinDistanceOfLocations : (mBiasAgainstPolysWithinDistanceOfLocations = ScriptObject.Find!(ScriptFunction)("Function GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations.BiasAgainstPolysWithinDistanceOfLocations")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations.Recycle")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Vector) LocationsToCheck() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 108); }
		float DistanceToCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		Vector Rotation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
		Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
	}
final:
	static bool BiasAgainstPolysWithinDistanceOfLocations(NavigationHandle NavHandle, Vector InLocation, Rotator InRotation, float InDistanceToCheck, ScriptArray!(Vector) InLocationsToCheck)
	{
		ubyte params[48];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = InLocation;
		*cast(Rotator*)&params[16] = InRotation;
		*cast(float*)&params[28] = InDistanceToCheck;
		*cast(ScriptArray!(Vector)*)&params[32] = InLocationsToCheck;
		StaticClass.ProcessEvent(Functions.BiasAgainstPolysWithinDistanceOfLocations, params.ptr, cast(void*)0);
		return *cast(bool*)&params[44];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
