module UnrealScript.UTGame.UTAnimNodeSeqWeap;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeSeqWeap;

extern(C++) interface UTAnimNodeSeqWeap : UDKAnimNodeSeqWeap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimNodeSeqWeap")); }
}
