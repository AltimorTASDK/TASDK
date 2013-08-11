module UnrealScript.UTGame.UTAirVehicle;

import ScriptClasses;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.Engine.Actor;

extern(C++) interface UTAirVehicle : UTVehicle
{
	public @property final auto ref float LastRadarLockWarnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2776); }
	public @property final auto ref ScriptString RadarLockMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2764); }
	public @property final auto ref float PushForce() { return *cast(float*)(cast(size_t)cast(void*)this + 2760); }
	public @property final bool bAutoLand() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2756) & 0x1) != 0; }
	public @property final bool bAutoLand(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2756) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2756) &= ~0x1; } return val; }
	final void LockOnWarning(UDKProjectile IncomingMissile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKProjectile*)params.ptr = IncomingMissile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40360], params.ptr, cast(void*)0);
	}
	final void SetDriving(bool bNewDriving)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewDriving;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40362], params.ptr, cast(void*)0);
	}
	final bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40377], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40379], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
