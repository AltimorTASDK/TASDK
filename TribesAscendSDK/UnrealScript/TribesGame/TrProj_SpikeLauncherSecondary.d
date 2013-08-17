module UnrealScript.TribesGame.TrProj_SpikeLauncherSecondary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_SpikeLauncherSecondary : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_SpikeLauncherSecondary")); }
	private static __gshared TrProj_SpikeLauncherSecondary mDefaultProperties;
	@property final static TrProj_SpikeLauncherSecondary DefaultProperties() { mixin(MGDPC("TrProj_SpikeLauncherSecondary", "TrProj_SpikeLauncherSecondary TribesGame.Default__TrProj_SpikeLauncherSecondary")); }
}
