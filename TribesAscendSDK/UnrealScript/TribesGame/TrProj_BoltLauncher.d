module UnrealScript.TribesGame.TrProj_BoltLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_BoltLauncher : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_BoltLauncher")); }
	private static __gshared TrProj_BoltLauncher mDefaultProperties;
	@property final static TrProj_BoltLauncher DefaultProperties() { mixin(MGDPC("TrProj_BoltLauncher", "TrProj_BoltLauncher TribesGame.Default__TrProj_BoltLauncher")); }
}
