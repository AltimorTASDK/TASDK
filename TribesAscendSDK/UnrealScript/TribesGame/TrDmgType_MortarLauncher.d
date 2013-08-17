module UnrealScript.TribesGame.TrDmgType_MortarLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_MortarLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_MortarLauncher")); }
	private static __gshared TrDmgType_MortarLauncher mDefaultProperties;
	@property final static TrDmgType_MortarLauncher DefaultProperties() { mixin(MGDPC("TrDmgType_MortarLauncher", "TrDmgType_MortarLauncher TribesGame.Default__TrDmgType_MortarLauncher")); }
}
