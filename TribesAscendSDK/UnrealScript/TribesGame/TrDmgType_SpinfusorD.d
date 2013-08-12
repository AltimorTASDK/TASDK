module UnrealScript.TribesGame.TrDmgType_SpinfusorD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_SpinfusorD : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SpinfusorD")); }
}
