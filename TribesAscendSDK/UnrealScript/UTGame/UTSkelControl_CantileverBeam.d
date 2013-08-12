module UnrealScript.UTGame.UTSkelControl_CantileverBeam;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_CantileverBeam;

extern(C++) interface UTSkelControl_CantileverBeam : UDKSkelControl_CantileverBeam
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_CantileverBeam")); }
}
