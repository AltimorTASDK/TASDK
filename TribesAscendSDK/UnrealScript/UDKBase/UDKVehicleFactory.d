module UnrealScript.UDKBase.UDKVehicleFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UDKBase.UDKVehicle;

extern(C++) interface UDKVehicleFactory : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKVehicleFactory")); }
	private static __gshared UDKVehicleFactory mDefaultProperties;
	@property final static UDKVehicleFactory DefaultProperties() { mixin(MGDPC("UDKVehicleFactory", "UDKVehicleFactory UDKBase.Default__UDKVehicleFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnVehicle;
			ScriptFunction mSetHUDLocation;
			ScriptFunction mGetTeamNum;
		}
		public @property static final
		{
			ScriptFunction SpawnVehicle() { mixin(MGF("mSpawnVehicle", "Function UDKBase.UDKVehicleFactory.SpawnVehicle")); }
			ScriptFunction SetHUDLocation() { mixin(MGF("mSetHUDLocation", "Function UDKBase.UDKVehicleFactory.SetHUDLocation")); }
			ScriptFunction GetTeamNum() { mixin(MGF("mGetTeamNum", "Function UDKBase.UDKVehicleFactory.GetTeamNum")); }
		}
	}
	@property final
	{
		auto ref
		{
			int TeamNum() { mixin(MGPC("int", 732)); }
			Vector HUDLocation() { mixin(MGPC("Vector", 720)); }
			float RespawnProgress() { mixin(MGPC("float", 716)); }
			UDKVehicle ChildVehicle() { mixin(MGPC("UDKVehicle", 712)); }
			ScriptClass VehicleClass() { mixin(MGPC("ScriptClass", 708)); }
			ScriptString VehicleClassPath() { mixin(MGPC("ScriptString", 692)); }
		}
		bool bReplicateChildVehicle() { mixin(MGBPC(704, 0x2)); }
		bool bReplicateChildVehicle(bool val) { mixin(MSBPC(704, 0x2)); }
		bool bHasLockedVehicle() { mixin(MGBPC(704, 0x1)); }
		bool bHasLockedVehicle(bool val) { mixin(MSBPC(704, 0x1)); }
	}
final:
	void SpawnVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnVehicle, cast(void*)0, cast(void*)0);
	}
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHUDLocation, params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
}
