module UnrealScript.TribesGame.TrProj_HeavyImpactNitron;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HeavyImpactNitron : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_HeavyImpactNitron")()); }
	private static __gshared TrProj_HeavyImpactNitron mDefaultProperties;
	@property final static TrProj_HeavyImpactNitron DefaultProperties() { mixin(MGDPC!(TrProj_HeavyImpactNitron, "TrProj_HeavyImpactNitron TribesGame.Default__TrProj_HeavyImpactNitron")()); }
}
