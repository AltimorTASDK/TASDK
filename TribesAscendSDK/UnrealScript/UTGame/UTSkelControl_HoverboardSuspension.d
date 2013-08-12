module UnrealScript.UTGame.UTSkelControl_HoverboardSuspension;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_HoverboardSuspension;

extern(C++) interface UTSkelControl_HoverboardSuspension : UDKSkelControl_HoverboardSuspension
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_HoverboardSuspension")); }
	private static __gshared UTSkelControl_HoverboardSuspension mDefaultProperties;
	@property final static UTSkelControl_HoverboardSuspension DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_HoverboardSuspension)("UTSkelControl_HoverboardSuspension UTGame.Default__UTSkelControl_HoverboardSuspension")); }
}
