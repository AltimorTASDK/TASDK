module UnrealScript.UDKBase.UDKVehicleFactory;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UDKBase.UDKVehicle;

extern(C++) interface UDKVehicleFactory : NavigationPoint
{
public extern(D):
	@property final
	{
		auto ref
		{
			int TeamNum() { return *cast(int*)(cast(size_t)cast(void*)this + 732); }
			Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 720); }
			float RespawnProgress() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			UDKVehicle ChildVehicle() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 712); }
			ScriptClass VehicleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 708); }
			ScriptString VehicleClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 692); }
		}
		bool bReplicateChildVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x2) != 0; }
		bool bReplicateChildVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x2; } return val; }
		bool bHasLockedVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 704) & 0x1) != 0; }
		bool bHasLockedVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 704) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 704) &= ~0x1; } return val; }
	}
final:
	void SpawnVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36132], cast(void*)0, cast(void*)0);
	}
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36133], params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36135], params.ptr, cast(void*)0);
		return params[0];
	}
}
