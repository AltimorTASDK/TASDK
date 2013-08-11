module UnrealScript.UDKBase.UDKWeaponPawn;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKVehicleBase;
import UnrealScript.UDKBase.UDKWeapon;

extern(C++) interface UDKWeaponPawn : UDKVehicleBase
{
	public @property final auto ref int MySeatIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1556); }
	public @property final auto ref UDKWeapon MyVehicleWeapon() { return *cast(UDKWeapon*)(cast(size_t)cast(void*)this + 1552); }
	public @property final auto ref UDKVehicle MyVehicle() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 1548); }
	final Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36282], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
}
