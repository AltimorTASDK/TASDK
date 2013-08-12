module UnrealScript.UTGame.UTSkelControl_HoverboardSuspension;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_HoverboardSuspension;

extern(C++) interface UTSkelControl_HoverboardSuspension : UDKSkelControl_HoverboardSuspension
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_HoverboardSuspension")); }
}
