module UnrealScript.GameFramework.NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_BiasAgainstPolysWithinDistanceOfLocations : NavMeshPathConstraint
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(Vector) LocationsToCheck() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 108); }
		float DistanceToCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		Vector Rotation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
		Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
	}
final:
	bool BiasAgainstPolysWithinDistanceOfLocations(NavigationHandle NavHandle, Vector InLocation, Rotator InRotation, float InDistanceToCheck, ScriptArray!(Vector) InLocationsToCheck)
	{
		ubyte params[48];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = InLocation;
		*cast(Rotator*)&params[16] = InRotation;
		*cast(float*)&params[28] = InDistanceToCheck;
		*cast(ScriptArray!(Vector)*)&params[32] = InLocationsToCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32872], params.ptr, cast(void*)0);
		return *cast(bool*)&params[44];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32881], cast(void*)0, cast(void*)0);
	}
}
