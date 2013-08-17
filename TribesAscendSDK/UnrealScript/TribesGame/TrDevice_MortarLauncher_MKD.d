module UnrealScript.TribesGame.TrDevice_MortarLauncher_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_MortarLauncher;

extern(C++) interface TrDevice_MortarLauncher_MKD : TrDevice_MortarLauncher
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_MortarLauncher_MKD")()); }
	private static __gshared TrDevice_MortarLauncher_MKD mDefaultProperties;
	@property final static TrDevice_MortarLauncher_MKD DefaultProperties() { mixin(MGDPC!(TrDevice_MortarLauncher_MKD, "TrDevice_MortarLauncher_MKD TribesGame.Default__TrDevice_MortarLauncher_MKD")()); }
}
