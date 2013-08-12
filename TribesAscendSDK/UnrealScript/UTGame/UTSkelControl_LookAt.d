module UnrealScript.UTGame.UTSkelControl_LookAt;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_LookAt;

extern(C++) interface UTSkelControl_LookAt : UDKSkelControl_LookAt
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_LookAt")); }
}
