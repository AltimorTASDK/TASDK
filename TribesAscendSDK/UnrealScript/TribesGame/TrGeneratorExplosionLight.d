module UnrealScript.TribesGame.TrGeneratorExplosionLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrGeneratorExplosionLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGeneratorExplosionLight")()); }
	private static __gshared TrGeneratorExplosionLight mDefaultProperties;
	@property final static TrGeneratorExplosionLight DefaultProperties() { mixin(MGDPC!(TrGeneratorExplosionLight, "TrGeneratorExplosionLight TribesGame.Default__TrGeneratorExplosionLight")()); }
}
