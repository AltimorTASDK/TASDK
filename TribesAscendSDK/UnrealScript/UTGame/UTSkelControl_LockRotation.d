module UnrealScript.UTGame.UTSkelControl_LockRotation;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_LockRotation;

extern(C++) interface UTSkelControl_LockRotation : UDKSkelControl_LockRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_LockRotation")); }
}
