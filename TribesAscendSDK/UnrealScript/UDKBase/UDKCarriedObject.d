module UnrealScript.UDKBase.UDKCarriedObject;

import ScriptClasses;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface UDKCarriedObject : Actor
{
	public @property final auto ref Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref Actor OldBaseBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref Actor OldBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref Vector HomeBaseOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref UDKGameObjective HomeBase() { return *cast(UDKGameObjective*)(cast(size_t)cast(void*)this + 496); }
	public @property final bool bHome() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
	public @property final bool bHome(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	public @property final auto ref float LastValidAnchorTime() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref NavigationPoint LastAnchor() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref TeamInfo Team() { return *cast(TeamInfo*)(cast(size_t)cast(void*)this + 476); }
	final void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34748], params.ptr, cast(void*)0);
	}
	final void NotReachableBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34750], params.ptr, cast(void*)0);
	}
	final void OnBaseChainChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34752], cast(void*)0, cast(void*)0);
	}
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34753], params.ptr, cast(void*)0);
		return params[0];
	}
}
