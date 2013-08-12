module UnrealScript.UTGame.UTAnimBlendByDriving;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByDriving;

extern(C++) interface UTAnimBlendByDriving : UDKAnimBlendByDriving
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByDriving")); }
}
