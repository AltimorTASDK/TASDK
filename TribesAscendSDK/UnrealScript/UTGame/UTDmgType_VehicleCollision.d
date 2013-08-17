module UnrealScript.UTGame.UTDmgType_VehicleCollision;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_VehicleCollision : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDmgType_VehicleCollision")); }
	private static __gshared UTDmgType_VehicleCollision mDefaultProperties;
	@property final static UTDmgType_VehicleCollision DefaultProperties() { mixin(MGDPC("UTDmgType_VehicleCollision", "UTDmgType_VehicleCollision UTGame.Default__UTDmgType_VehicleCollision")); }
}
