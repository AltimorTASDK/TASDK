module UnrealScript.Engine.NavMeshGoal_At;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_At : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshGoal_At")()); }
	private static __gshared NavMeshGoal_At mDefaultProperties;
	@property final static NavMeshGoal_At DefaultProperties() { mixin(MGDPC!(NavMeshGoal_At, "NavMeshGoal_At Engine.Default__NavMeshGoal_At")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycleNative;
			ScriptFunction mAtActor;
			ScriptFunction mAtLocation;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction RecycleNative() { mixin(MGF!("mRecycleNative", "Function Engine.NavMeshGoal_At.RecycleNative")()); }
			ScriptFunction AtActor() { mixin(MGF!("mAtActor", "Function Engine.NavMeshGoal_At.AtActor")()); }
			ScriptFunction AtLocation() { mixin(MGF!("mAtLocation", "Function Engine.NavMeshGoal_At.AtLocation")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.NavMeshGoal_At.Recycle")()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Pointer PartialGoal() { mixin(MGPC!("UObject.Pointer", 104)()); }
			UObject.Pointer GoalPoly() { mixin(MGPC!("UObject.Pointer", 100)()); }
			float GoalDist() { mixin(MGPC!("float", 92)()); }
			Vector Goal() { mixin(MGPC!("Vector", 80)()); }
		}
		bool bKeepPartial() { mixin(MGBPC!(96, 0x1)()); }
		bool bKeepPartial(bool val) { mixin(MSBPC!(96, 0x1)()); }
	}
final:
	void RecycleNative()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecycleNative, cast(void*)0, cast(void*)0);
	}
	static bool AtActor(NavigationHandle NavHandle, Actor GoalActor, float* Dist = null, bool* bReturnPartial = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Actor*)&params[4] = GoalActor;
		if (Dist !is null)
			*cast(float*)&params[8] = *Dist;
		if (bReturnPartial !is null)
			*cast(bool*)&params[12] = *bReturnPartial;
		StaticClass.ProcessEvent(Functions.AtActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	static bool AtLocation(NavigationHandle NavHandle, Vector GoalLocation, float* Dist = null, bool* bReturnPartial = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = GoalLocation;
		if (Dist !is null)
			*cast(float*)&params[16] = *Dist;
		if (bReturnPartial !is null)
			*cast(bool*)&params[20] = *bReturnPartial;
		StaticClass.ProcessEvent(Functions.AtLocation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
