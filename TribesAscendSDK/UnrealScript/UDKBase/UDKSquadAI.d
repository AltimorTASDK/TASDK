module UnrealScript.UDKBase.UDKSquadAI;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UDKBase.UDKBot;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.UDKBase.UDKTeamOwnedInfo;

extern(C++) interface UDKSquadAI : UDKTeamOwnedInfo
{
public extern(D):
	struct AlternateRoute
	{
		private ubyte __buffer__[12];
	public extern(D):
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
