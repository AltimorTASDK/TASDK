module UnrealScript.TribesGame.TrDevice_AssaultRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_AssaultRifle : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_AssaultRifle")()); }
	private static __gshared TrDevice_AssaultRifle mDefaultProperties;
	@property final static TrDevice_AssaultRifle DefaultProperties() { mixin(MGDPC!(TrDevice_AssaultRifle, "TrDevice_AssaultRifle TribesGame.Default__TrDevice_AssaultRifle")()); }
}
