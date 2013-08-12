module UnrealScript.TribesGame.TrDmgType_AVMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_AVMine : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_AVMine")); }
}
