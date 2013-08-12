module UnrealScript.UTGame.UTAnimBlendByPosture;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByPosture;

extern(C++) interface UTAnimBlendByPosture : UDKAnimBlendByPosture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByPosture")); }
}
