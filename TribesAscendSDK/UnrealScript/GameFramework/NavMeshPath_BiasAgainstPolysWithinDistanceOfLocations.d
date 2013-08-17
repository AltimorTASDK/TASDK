module UnrealScript.GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations")()); }
	private static __gshared NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations mDefaultProperties;
	@property final static NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations DefaultProperties() { mixin(MGDPC!(NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations, "NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations GameFramework.Default__NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBiasAgainstPolysWithinDistanceOfLocations;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction BiasAgainstPolysWithinDistanceOfLocations() { mixin(MGF!("mBiasAgainstPolysWithinDistanceOfLocations", "Function GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations.BiasAgainstPolysWithinDistanceOfLocations")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations.Recycle")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Vector) LocationsToCheck() { mixin(MGPC!(ScriptArray!(Vector), 108)()); }
		float DistanceToCheck() { mixin(MGPC!(float, 104)()); }
		Vector Rotation() { mixin(MGPC!(Vector, 92)()); }
		Vector Location() { mixin(MGPC!(Vector, 80)()); }
	}
final:
	static bool BiasAgainstPolysWithinDistanceOfLocations(NavigationHandle NavHandle, const Vector InLocation, const Rotator InRotation, const float InDistanceToCheck, const ScriptArray!(Vector) InLocationsToCheck)
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
