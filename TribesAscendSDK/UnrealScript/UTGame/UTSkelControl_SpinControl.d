module UnrealScript.UTGame.UTSkelControl_SpinControl;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_SpinControl;

extern(C++) interface UTSkelControl_SpinControl : UDKSkelControl_SpinControl
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_SpinControl")); }
}
