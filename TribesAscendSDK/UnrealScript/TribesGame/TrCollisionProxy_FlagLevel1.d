module UnrealScript.TribesGame.TrCollisionProxy_FlagLevel1;

import ScriptClasses;
import UnrealScript.TribesGame.TrCollisionProxy_Flag;

extern(C++) interface TrCollisionProxy_FlagLevel1 : TrCollisionProxy_Flag
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCollisionProxy_FlagLevel1")); }
}
