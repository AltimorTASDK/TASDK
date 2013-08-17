module UnrealScript.TribesGame.TrProj_MortarLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_MortarLauncher : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_MortarLauncher")()); }
	private static __gshared TrProj_MortarLauncher mDefaultProperties;
	@property final static TrProj_MortarLauncher DefaultProperties() { mixin(MGDPC!(TrProj_MortarLauncher, "TrProj_MortarLauncher TribesGame.Default__TrProj_MortarLauncher")()); }
}
