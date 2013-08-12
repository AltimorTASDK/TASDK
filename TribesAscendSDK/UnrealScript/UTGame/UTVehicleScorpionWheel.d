module UnrealScript.UTGame.UTVehicleScorpionWheel;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicleWheel;

extern(C++) interface UTVehicleScorpionWheel : UDKVehicleWheel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVehicleScorpionWheel")); }
	private static __gshared UTVehicleScorpionWheel mDefaultProperties;
	@property final static UTVehicleScorpionWheel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTVehicleScorpionWheel)("UTVehicleScorpionWheel UTGame.Default__UTVehicleScorpionWheel")); }
}
