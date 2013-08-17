module UnrealScript.UDKBase.UDKScriptedNavigationPoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;

extern(C++) interface UDKScriptedNavigationPoint : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKScriptedNavigationPoint")()); }
	private static __gshared UDKScriptedNavigationPoint mDefaultProperties;
	@property final static UDKScriptedNavigationPoint DefaultProperties() { mixin(MGDPC!(UDKScriptedNavigationPoint, "UDKScriptedNavigationPoint UDKBase.Default__UDKScriptedNavigationPoint")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpecifyEndAnchor;
			ScriptFunction mNotifyAnchorFindingResult;
		}
		public @property static final
		{
			ScriptFunction SpecifyEndAnchor() { mixin(MGF!("mSpecifyEndAnchor", "Function UDKBase.UDKScriptedNavigationPoint.SpecifyEndAnchor")()); }
			ScriptFunction NotifyAnchorFindingResult() { mixin(MGF!("mNotifyAnchorFindingResult", "Function UDKBase.UDKScriptedNavigationPoint.NotifyAnchorFindingResult")()); }
		}
	}
	@property final
	{
		bool bAnchorMustBeReachable() { mixin(MGBPC!(692, 0x4)()); }
		bool bAnchorMustBeReachable(bool val) { mixin(MSBPC!(692, 0x4)()); }
		bool bScriptNotifyAnchorFindingResult() { mixin(MGBPC!(692, 0x2)()); }
		bool bScriptNotifyAnchorFindingResult(bool val) { mixin(MSBPC!(692, 0x2)()); }
		bool bScriptSpecifyEndAnchor() { mixin(MGBPC!(692, 0x1)()); }
		bool bScriptSpecifyEndAnchor(bool val) { mixin(MSBPC!(692, 0x1)()); }
	}
final:
	NavigationPoint SpecifyEndAnchor(Pawn RouteFinder)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = RouteFinder;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecifyEndAnchor, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[4];
	}
	void NotifyAnchorFindingResult(NavigationPoint EndAnchor, Pawn RouteFinder)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = EndAnchor;
		*cast(Pawn*)&params[4] = RouteFinder;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyAnchorFindingResult, params.ptr, cast(void*)0);
	}
}
