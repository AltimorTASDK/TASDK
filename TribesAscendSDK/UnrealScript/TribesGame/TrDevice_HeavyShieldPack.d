module UnrealScript.TribesGame.TrDevice_HeavyShieldPack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_HeavyShieldPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_HeavyShieldPack")()); }
	private static __gshared TrDevice_HeavyShieldPack mDefaultProperties;
	@property final static TrDevice_HeavyShieldPack DefaultProperties() { mixin(MGDPC!(TrDevice_HeavyShieldPack, "TrDevice_HeavyShieldPack TribesGame.Default__TrDevice_HeavyShieldPack")()); }
}
