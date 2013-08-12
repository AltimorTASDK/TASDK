module UnrealScript.UTGame.UTSkelControl_MantaFlaps;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_VehicleFlap;

extern(C++) interface UTSkelControl_MantaFlaps : UDKSkelControl_VehicleFlap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_MantaFlaps")); }
}
