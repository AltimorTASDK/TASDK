module UnrealScript.TribesGame.TrDmgType_VehicleExplosion;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_VehicleExplosion : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_VehicleExplosion")); }
	private static __gshared TrDmgType_VehicleExplosion mDefaultProperties;
	@property final static TrDmgType_VehicleExplosion DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_VehicleExplosion)("TrDmgType_VehicleExplosion TribesGame.Default__TrDmgType_VehicleExplosion")); }
}
