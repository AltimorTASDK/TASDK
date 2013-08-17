module UnrealScript.TribesGame.TrDmgType_GrenadeLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_GrenadeLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_GrenadeLauncher")); }
	private static __gshared TrDmgType_GrenadeLauncher mDefaultProperties;
	@property final static TrDmgType_GrenadeLauncher DefaultProperties() { mixin(MGDPC("TrDmgType_GrenadeLauncher", "TrDmgType_GrenadeLauncher TribesGame.Default__TrDmgType_GrenadeLauncher")); }
}
