module UnrealScript.UTGame.UTSkelControl_Rotate;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_Rotate;

extern(C++) interface UTSkelControl_Rotate : UDKSkelControl_Rotate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_Rotate")); }
}
