module UnrealScript.UTGame.UTSkelControl_MantaBlade;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_PropellerBlade;

extern(C++) interface UTSkelControl_MantaBlade : UDKSkelControl_PropellerBlade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_MantaBlade")); }
}
