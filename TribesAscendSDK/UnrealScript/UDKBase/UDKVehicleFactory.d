module UnrealScript.UDKBase.UDKVehicleFactory;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UDKBase.UDKVehicle;

extern(C++) interface UDKVehicleFactory : NavigationPoint
{
	public @property final auto ref int TeamNum() { return *cast(int*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref float RespawnProgress() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref UDKVehicle ChildVehicle() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref ScriptClass VehicleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 708); }
	public @property final bool bReplicateChildVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x2) != 0; }
	public @property final bool bReplicateChildVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x2; } return val; }
	public @property final bool bHasLockedVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x1) != 0; }
	public @property final bool bHasLockedVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x1; } return val; }
	public @property final auto ref ScriptString VehicleClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 692); }
	final void SpawnVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36132], cast(void*)0, cast(void*)0);
	}
	final void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36133], params.ptr, cast(void*)0);
	}
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36135], params.ptr, cast(void*)0);
		return params[0];
	}
}
