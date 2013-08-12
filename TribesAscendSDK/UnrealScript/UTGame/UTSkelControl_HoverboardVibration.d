module UnrealScript.UTGame.UTSkelControl_HoverboardVibration;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_HoverboardVibration;

extern(C++) interface UTSkelControl_HoverboardVibration : UDKSkelControl_HoverboardVibration
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_HoverboardVibration")); }
	private static __gshared UTSkelControl_HoverboardVibration mDefaultProperties;
	@property final static UTSkelControl_HoverboardVibration DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_HoverboardVibration)("UTSkelControl_HoverboardVibration UTGame.Default__UTSkelControl_HoverboardVibration")); }
}
