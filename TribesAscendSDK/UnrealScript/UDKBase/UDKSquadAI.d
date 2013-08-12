module UnrealScript.UDKBase.UDKSquadAI;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UDKBase.UDKBot;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.UDKBase.UDKTeamOwnedInfo;

extern(C++) interface UDKSquadAI : UDKTeamOwnedInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSquadAI")); }
	private static __gshared UDKSquadAI mDefaultProperties;
	@property final static UDKSquadAI DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKSquadAI)("UDKSquadAI UDKBase.Default__UDKSquadAI")); }
	struct AlternateRoute
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKSquadAI.AlternateRoute")); }
		@property final auto ref ScriptArray!(NavigationPoint) RouteCache() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)&this + 0); }
	}
	@property final auto ref
	{
		ScriptArray!(NavigationPoint) ObjectiveRouteCache() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 488); }
		ScriptArray!(NavigationPoint) PreviousObjectiveRouteCache() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 500); }
		ScriptArray!(UDKSquadAI.AlternateRoute) SquadRoutes() { return *cast(ScriptArray!(UDKSquadAI.AlternateRoute)*)(cast(size_t)cast(void*)this + 520); }
		int MaxSquadRoutes() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
		int SquadRouteIteration() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
		UDKBot PendingSquadRouteMaker() { return *cast(UDKBot*)(cast(size_t)cast(void*)this + 512); }
		NavigationPoint RouteObjective() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 484); }
		UDKGameObjective SquadObjective() { return *cast(UDKGameObjective*)(cast(size_t)cast(void*)this + 480); }
	}
}
