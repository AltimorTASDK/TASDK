module UnrealScript.UDKBase.UDKWeaponPawn;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKVehicleBase;
import UnrealScript.UDKBase.UDKWeapon;

extern(C++) interface UDKWeaponPawn : UDKVehicleBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKWeaponPawn")); }
	private static __gshared UDKWeaponPawn mDefaultProperties;
	@property final static UDKWeaponPawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKWeaponPawn)("UDKWeaponPawn UDKBase.Default__UDKWeaponPawn")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetTargetLocation;
		public @property static final ScriptFunction GetTargetLocation() { return mGetTargetLocation ? mGetTargetLocation : (mGetTargetLocation = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKWeaponPawn.GetTargetLocation")); }
	}
	@property final auto ref
	{
		int MySeatIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1556); }
		UDKWeapon MyVehicleWeapon() { return *cast(UDKWeapon*)(cast(size_t)cast(void*)this + 1552); }
		UDKVehicle MyVehicle() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 1548); }
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
