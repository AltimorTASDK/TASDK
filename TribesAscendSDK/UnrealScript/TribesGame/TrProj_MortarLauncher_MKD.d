module UnrealScript.TribesGame.TrProj_MortarLauncher_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_MortarLauncher;

extern(C++) interface TrProj_MortarLauncher_MKD : TrProj_MortarLauncher
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_MortarLauncher_MKD")); }
}
