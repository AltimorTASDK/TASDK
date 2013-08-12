module UnrealScript.UTGame.UTAnimBlendByVehicle;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByVehicle;

extern(C++) interface UTAnimBlendByVehicle : UDKAnimBlendByVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByVehicle")); }
}
