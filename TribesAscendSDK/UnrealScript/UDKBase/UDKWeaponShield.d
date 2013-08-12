module UnrealScript.UDKBase.UDKWeaponShield;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface UDKWeaponShield : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKWeaponShield")); }
	private static __gshared UDKWeaponShield mDefaultProperties;
	@property final static UDKWeaponShield DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKWeaponShield)("UDKWeaponShield UDKBase.Default__UDKWeaponShield")); }
	@property final
	{
		bool bIgnoreFlaggedProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bIgnoreFlaggedProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	}
}
