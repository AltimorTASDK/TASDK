module UnrealScript.TribesGame.TrProj_SpikeLauncherThird;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_SpikeLauncherThird : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_SpikeLauncherThird")()); }
	private static __gshared TrProj_SpikeLauncherThird mDefaultProperties;
	@property final static TrProj_SpikeLauncherThird DefaultProperties() { mixin(MGDPC!(TrProj_SpikeLauncherThird, "TrProj_SpikeLauncherThird TribesGame.Default__TrProj_SpikeLauncherThird")()); }
}
