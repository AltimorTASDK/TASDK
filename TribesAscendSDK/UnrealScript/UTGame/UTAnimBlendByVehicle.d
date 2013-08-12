module UnrealScript.UTGame.UTAnimBlendByVehicle;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByVehicle;

extern(C++) interface UTAnimBlendByVehicle : UDKAnimBlendByVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByVehicle")); }
	private static __gshared UTAnimBlendByVehicle mDefaultProperties;
	@property final static UTAnimBlendByVehicle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByVehicle)("UTAnimBlendByVehicle UTGame.Default__UTAnimBlendByVehicle")); }
}
