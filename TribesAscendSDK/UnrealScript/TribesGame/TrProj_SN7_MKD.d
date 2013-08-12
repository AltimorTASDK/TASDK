module UnrealScript.TribesGame.TrProj_SN7_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_SN7;

extern(C++) interface TrProj_SN7_MKD : TrProj_SN7
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_SN7_MKD")); }
}
