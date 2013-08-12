module UnrealScript.TribesGame.TrProj_DiskToss;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Spinfusor;

extern(C++) interface TrProj_DiskToss : TrProj_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_DiskToss")); }
}
