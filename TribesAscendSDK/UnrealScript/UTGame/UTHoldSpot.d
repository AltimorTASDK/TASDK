module UnrealScript.UTGame.UTHoldSpot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDefensePoint;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface UTHoldSpot : UTDefensePoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTHoldSpot")()); }
	private static __gshared UTHoldSpot mDefaultProperties;
	@property final static UTHoldSpot DefaultProperties() { mixin(MGDPC!(UTHoldSpot, "UTHoldSpot UTGame.Default__UTHoldSpot")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mGetMoveTarget;
			ScriptFunction mFreePoint;
			ScriptFunction mSpecifyEndAnchor;
			ScriptFunction mNotifyAnchorFindingResult;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function UTGame.UTHoldSpot.PreBeginPlay")()); }
			ScriptFunction GetMoveTarget() { mixin(MGF!("mGetMoveTarget", "Function UTGame.UTHoldSpot.GetMoveTarget")()); }
			ScriptFunction FreePoint() { mixin(MGF!("mFreePoint", "Function UTGame.UTHoldSpot.FreePoint")()); }
			ScriptFunction SpecifyEndAnchor() { mixin(MGF!("mSpecifyEndAnchor", "Function UTGame.UTHoldSpot.SpecifyEndAnchor")()); }
			ScriptFunction NotifyAnchorFindingResult() { mixin(MGF!("mNotifyAnchorFindingResult", "Function UTGame.UTHoldSpot.NotifyAnchorFindingResult")()); }
		}
	}
	@property final auto ref
	{
		NavigationPoint LastAnchor() { mixin(MGPC!("NavigationPoint", 744)()); }
		UTVehicle HoldVehicle() { mixin(MGPC!("UTVehicle", 740)()); }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	Actor GetMoveTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMoveTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	void FreePoint()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FreePoint, cast(void*)0, cast(void*)0);
	}
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
