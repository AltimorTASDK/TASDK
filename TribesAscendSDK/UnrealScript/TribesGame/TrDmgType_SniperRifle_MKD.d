module UnrealScript.TribesGame.TrDmgType_SniperRifle_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SniperRifle_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_SniperRifle_MKD")()); }
	private static __gshared TrDmgType_SniperRifle_MKD mDefaultProperties;
	@property final static TrDmgType_SniperRifle_MKD DefaultProperties() { mixin(MGDPC!(TrDmgType_SniperRifle_MKD, "TrDmgType_SniperRifle_MKD TribesGame.Default__TrDmgType_SniperRifle_MKD")()); }
}
