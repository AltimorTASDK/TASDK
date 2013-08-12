module UnrealScript.TribesGame.TrProj_NovaColt_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_NovaColt;

extern(C++) interface TrProj_NovaColt_MKD : TrProj_NovaColt
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_NovaColt_MKD")); }
}
