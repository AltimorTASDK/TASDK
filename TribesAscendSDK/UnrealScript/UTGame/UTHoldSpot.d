module UnrealScript.UTGame.UTHoldSpot;

import ScriptClasses;
import UnrealScript.UTGame.UTDefensePoint;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface UTHoldSpot : UTDefensePoint
{
public extern(D):
	@property final auto ref
	{
		NavigationPoint LastAnchor() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 744); }
		UTVehicle HoldVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 740); }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47992], cast(void*)0, cast(void*)0);
	}
	Actor GetMoveTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47993], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	void FreePoint()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47995], cast(void*)0, cast(void*)0);
	}
	NavigationPoint SpecifyEndAnchor(Pawn RouteFinder)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = RouteFinder;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47996], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[4];
	}
	void NotifyAnchorFindingResult(NavigationPoint EndAnchor, Pawn RouteFinder)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = EndAnchor;
		*cast(Pawn*)&params[4] = RouteFinder;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47999], params.ptr, cast(void*)0);
	}
}
