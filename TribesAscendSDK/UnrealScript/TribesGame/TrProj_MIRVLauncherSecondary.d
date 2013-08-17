module UnrealScript.TribesGame.TrProj_MIRVLauncherSecondary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_MIRVLauncherSecondary : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_MIRVLauncherSecondary")); }
	private static __gshared TrProj_MIRVLauncherSecondary mDefaultProperties;
	@property final static TrProj_MIRVLauncherSecondary DefaultProperties() { mixin(MGDPC("TrProj_MIRVLauncherSecondary", "TrProj_MIRVLauncherSecondary TribesGame.Default__TrProj_MIRVLauncherSecondary")); }
}
