module UnrealScript.TribesGame.TrProj_MIRVGrenadeSecondary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_MIRVGrenadeSecondary : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_MIRVGrenadeSecondary")); }
	private static __gshared TrProj_MIRVGrenadeSecondary mDefaultProperties;
	@property final static TrProj_MIRVGrenadeSecondary DefaultProperties() { mixin(MGDPC("TrProj_MIRVGrenadeSecondary", "TrProj_MIRVGrenadeSecondary TribesGame.Default__TrProj_MIRVGrenadeSecondary")); }
}
