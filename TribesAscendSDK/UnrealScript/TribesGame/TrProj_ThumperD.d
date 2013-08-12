module UnrealScript.TribesGame.TrProj_ThumperD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Thumper;

extern(C++) interface TrProj_ThumperD : TrProj_Thumper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ThumperD")); }
}
