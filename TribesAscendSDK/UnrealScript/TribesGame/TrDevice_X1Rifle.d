module UnrealScript.TribesGame.TrDevice_X1Rifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ChainGun;

extern(C++) interface TrDevice_X1Rifle : TrDevice_ChainGun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_X1Rifle")()); }
	private static __gshared TrDevice_X1Rifle mDefaultProperties;
	@property final static TrDevice_X1Rifle DefaultProperties() { mixin(MGDPC!(TrDevice_X1Rifle, "TrDevice_X1Rifle TribesGame.Default__TrDevice_X1Rifle")()); }
}
