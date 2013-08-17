module UnrealScript.TribesGame.TrDmgType_MortarLauncher_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_MortarLauncher;

extern(C++) interface TrDmgType_MortarLauncher_MKD : TrDmgType_MortarLauncher
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_MortarLauncher_MKD")); }
	private static __gshared TrDmgType_MortarLauncher_MKD mDefaultProperties;
	@property final static TrDmgType_MortarLauncher_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_MortarLauncher_MKD", "TrDmgType_MortarLauncher_MKD TribesGame.Default__TrDmgType_MortarLauncher_MKD")); }
}
