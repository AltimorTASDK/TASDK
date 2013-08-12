module UnrealScript.TribesGame.TrProj_GrenadeXL_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_GrenadeXL;

extern(C++) interface TrProj_GrenadeXL_MKD : TrProj_GrenadeXL
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_GrenadeXL_MKD")); }
}
