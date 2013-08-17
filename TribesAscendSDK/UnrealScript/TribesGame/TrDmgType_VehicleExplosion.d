module UnrealScript.TribesGame.TrDmgType_VehicleExplosion;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_VehicleExplosion : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_VehicleExplosion")()); }
	private static __gshared TrDmgType_VehicleExplosion mDefaultProperties;
	@property final static TrDmgType_VehicleExplosion DefaultProperties() { mixin(MGDPC!(TrDmgType_VehicleExplosion, "TrDmgType_VehicleExplosion TribesGame.Default__TrDmgType_VehicleExplosion")()); }
}
