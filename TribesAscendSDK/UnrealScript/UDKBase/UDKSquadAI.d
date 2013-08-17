module UnrealScript.UDKBase.UDKSquadAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UDKBase.UDKBot;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.UDKBase.UDKTeamOwnedInfo;

extern(C++) interface UDKSquadAI : UDKTeamOwnedInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKSquadAI")); }
	private static __gshared UDKSquadAI mDefaultProperties;
	@property final static UDKSquadAI DefaultProperties() { mixin(MGDPC("UDKSquadAI", "UDKSquadAI UDKBase.Default__UDKSquadAI")); }
	struct AlternateRoute
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKSquadAI.AlternateRoute")); }
		@property final auto ref ScriptArray!(NavigationPoint) RouteCache() { mixin(MGPS("ScriptArray!(NavigationPoint)", 0)); }
	}
	@property final auto ref
	{
		ScriptArray!(NavigationPoint) ObjectiveRouteCache() { mixin(MGPC("ScriptArray!(NavigationPoint)", 488)); }
		ScriptArray!(NavigationPoint) PreviousObjectiveRouteCache() { mixin(MGPC("ScriptArray!(NavigationPoint)", 500)); }
		ScriptArray!(UDKSquadAI.AlternateRoute) SquadRoutes() { mixin(MGPC("ScriptArray!(UDKSquadAI.AlternateRoute)", 520)); }
		int MaxSquadRoutes() { mixin(MGPC("int", 532)); }
		int SquadRouteIteration() { mixin(MGPC("int", 516)); }
		UDKBot PendingSquadRouteMaker() { mixin(MGPC("UDKBot", 512)); }
		NavigationPoint RouteObjective() { mixin(MGPC("NavigationPoint", 484)); }
		UDKGameObjective SquadObjective() { mixin(MGPC("UDKGameObjective", 480)); }
	}
}
