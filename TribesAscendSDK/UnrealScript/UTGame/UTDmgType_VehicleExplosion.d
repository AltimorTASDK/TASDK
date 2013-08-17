module UnrealScript.UTGame.UTDmgType_VehicleExplosion;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDmgType_Burning;

extern(C++) interface UTDmgType_VehicleExplosion : UTDmgType_Burning
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDmgType_VehicleExplosion")()); }
	private static __gshared UTDmgType_VehicleExplosion mDefaultProperties;
	@property final static UTDmgType_VehicleExplosion DefaultProperties() { mixin(MGDPC!(UTDmgType_VehicleExplosion, "UTDmgType_VehicleExplosion UTGame.Default__UTDmgType_VehicleExplosion")()); }
}
