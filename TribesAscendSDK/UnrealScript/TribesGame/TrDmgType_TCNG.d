module UnrealScript.TribesGame.TrDmgType_TCNG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_TCNG : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_TCNG")); }
}
