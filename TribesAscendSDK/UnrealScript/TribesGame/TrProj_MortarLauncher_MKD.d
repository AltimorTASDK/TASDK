module UnrealScript.TribesGame.TrProj_MortarLauncher_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_MortarLauncher;

extern(C++) interface TrProj_MortarLauncher_MKD : TrProj_MortarLauncher
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_MortarLauncher_MKD")); }
	private static __gshared TrProj_MortarLauncher_MKD mDefaultProperties;
	@property final static TrProj_MortarLauncher_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_MortarLauncher_MKD)("TrProj_MortarLauncher_MKD TribesGame.Default__TrProj_MortarLauncher_MKD")); }
}
