module UnrealScript.UTGame.UTSkelControl_HugGround;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_HugGround;

extern(C++) interface UTSkelControl_HugGround : UDKSkelControl_HugGround
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_HugGround")); }
}
