module UnrealScript.TribesGame.TrDevice_ShieldPack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_ShieldPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ShieldPack")()); }
	private static __gshared TrDevice_ShieldPack mDefaultProperties;
	@property final static TrDevice_ShieldPack DefaultProperties() { mixin(MGDPC!(TrDevice_ShieldPack, "TrDevice_ShieldPack TribesGame.Default__TrDevice_ShieldPack")()); }
}
