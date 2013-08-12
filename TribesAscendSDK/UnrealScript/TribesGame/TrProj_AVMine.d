module UnrealScript.TribesGame.TrProj_AVMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;

extern(C++) interface TrProj_AVMine : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_AVMine")); }
}
