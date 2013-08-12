module UnrealScript.UTGame.UTHoverWheel;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicleWheel;

extern(C++) interface UTHoverWheel : UDKVehicleWheel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTHoverWheel")); }
}
