module UnrealScript.UTGame.UTDmgType_VehicleExplosion;

import ScriptClasses;
import UnrealScript.UTGame.UTDmgType_Burning;

extern(C++) interface UTDmgType_VehicleExplosion : UTDmgType_Burning
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDmgType_VehicleExplosion")); }
	private static __gshared UTDmgType_VehicleExplosion mDefaultProperties;
	@property final static UTDmgType_VehicleExplosion DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDmgType_VehicleExplosion)("UTDmgType_VehicleExplosion UTGame.Default__UTDmgType_VehicleExplosion")); }
}
