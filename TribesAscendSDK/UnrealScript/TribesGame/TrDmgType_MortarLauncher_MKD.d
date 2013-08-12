module UnrealScript.TribesGame.TrDmgType_MortarLauncher_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_MortarLauncher;

extern(C++) interface TrDmgType_MortarLauncher_MKD : TrDmgType_MortarLauncher
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_MortarLauncher_MKD")); }
}
