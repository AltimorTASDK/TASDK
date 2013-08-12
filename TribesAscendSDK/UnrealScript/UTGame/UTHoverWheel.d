module UnrealScript.UTGame.UTHoverWheel;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicleWheel;

extern(C++) interface UTHoverWheel : UDKVehicleWheel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTHoverWheel")); }
	private static __gshared UTHoverWheel mDefaultProperties;
	@property final static UTHoverWheel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTHoverWheel)("UTHoverWheel UTGame.Default__UTHoverWheel")); }
}
