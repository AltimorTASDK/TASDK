module UnrealScript.TribesGame.TrDevice_HeavyImpactNitron;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_HeavyImpactNitron : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_HeavyImpactNitron")()); }
	private static __gshared TrDevice_HeavyImpactNitron mDefaultProperties;
	@property final static TrDevice_HeavyImpactNitron DefaultProperties() { mixin(MGDPC!(TrDevice_HeavyImpactNitron, "TrDevice_HeavyImpactNitron TribesGame.Default__TrDevice_HeavyImpactNitron")()); }
}
