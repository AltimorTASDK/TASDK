module UnrealScript.TribesGame.TrVehicle_HERC;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle_Tank;

extern(C++) interface TrVehicle_HERC : TrVehicle_Tank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_HERC")); }
	private static __gshared TrVehicle_HERC mDefaultProperties;
	@property final static TrVehicle_HERC DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicle_HERC)("TrVehicle_HERC TribesGame.Default__TrVehicle_HERC")); }
}
