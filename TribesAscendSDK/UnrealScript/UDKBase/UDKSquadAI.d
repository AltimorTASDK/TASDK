module UnrealScript.UDKBase.UDKSquadAI;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UDKBase.UDKBot;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.UDKBase.UDKTeamOwnedInfo;

extern(C++) interface UDKSquadAI : UDKTeamOwnedInfo
{
	struct AlternateRoute
	{
		public @property final auto ref ScriptArray!(NavigationPoint) RouteCache() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)&this + 0); }
		private ubyte __RouteCache[12];
	}
	public @property final auto ref ScriptArray!(NavigationPoint) ObjectiveRouteCache() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptArray!(NavigationPoint) PreviousObjectiveRouteCache() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref ScriptArray!(UDKSquadAI.AlternateRoute) SquadRoutes() { return *cast(ScriptArray!(UDKSquadAI.AlternateRoute)*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref int MaxSquadRoutes() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref int SquadRouteIteration() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref UDKBot PendingSquadRouteMaker() { return *cast(UDKBot*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref NavigationPoint RouteObjective() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref UDKGameObjective SquadObjective() { return *cast(UDKGameObjective*)(cast(size_t)cast(void*)this + 480); }
}
