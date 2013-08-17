module UnrealScript.UDKBase.UDKWeaponPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKVehicleBase;
import UnrealScript.UDKBase.UDKWeapon;

extern(C++) interface UDKWeaponPawn : UDKVehicleBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKWeaponPawn")()); }
	private static __gshared UDKWeaponPawn mDefaultProperties;
	@property final static UDKWeaponPawn DefaultProperties() { mixin(MGDPC!(UDKWeaponPawn, "UDKWeaponPawn UDKBase.Default__UDKWeaponPawn")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetTargetLocation;
		public @property static final ScriptFunction GetTargetLocation() { mixin(MGF!("mGetTargetLocation", "Function UDKBase.UDKWeaponPawn.GetTargetLocation")()); }
	}
	@property final auto ref
	{
		int MySeatIndex() { mixin(MGPC!(int, 1556)()); }
		UDKWeapon MyVehicleWeapon() { mixin(MGPC!(UDKWeapon, 1552)()); }
		UDKVehicle MyVehicle() { mixin(MGPC!(UDKVehicle, 1548)()); }
	}
	final Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
}
