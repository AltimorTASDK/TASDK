module UnrealScript.TribesGame.TrDmgType_MortarLauncher_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_MortarLauncher;

extern(C++) interface TrDmgType_MortarLauncher_MKD : TrDmgType_MortarLauncher
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_MortarLauncher_MKD")); }
	private static __gshared TrDmgType_MortarLauncher_MKD mDefaultProperties;
	@property final static TrDmgType_MortarLauncher_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_MortarLauncher_MKD)("TrDmgType_MortarLauncher_MKD TribesGame.Default__TrDmgType_MortarLauncher_MKD")); }
}
