module UnrealScript.TribesGame.TrDmgType_Twinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_Twinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Twinfusor")); }
}
