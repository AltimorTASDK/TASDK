module UnrealScript.TribesGame.TrProj_Chaingun_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Chaingun;

extern(C++) interface TrProj_Chaingun_MKD : TrProj_Chaingun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Chaingun_MKD")); }
}
