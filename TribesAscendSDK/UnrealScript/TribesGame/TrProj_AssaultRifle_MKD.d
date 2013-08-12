module UnrealScript.TribesGame.TrProj_AssaultRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_AssaultRifle;

extern(C++) interface TrProj_AssaultRifle_MKD : TrProj_AssaultRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_AssaultRifle_MKD")); }
}
