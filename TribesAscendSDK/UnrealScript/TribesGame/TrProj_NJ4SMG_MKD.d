module UnrealScript.TribesGame.TrProj_NJ4SMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_NJ4SMG;

extern(C++) interface TrProj_NJ4SMG_MKD : TrProj_NJ4SMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_NJ4SMG_MKD")); }
}
