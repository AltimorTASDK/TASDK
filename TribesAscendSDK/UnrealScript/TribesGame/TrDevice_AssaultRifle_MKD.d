module UnrealScript.TribesGame.TrDevice_AssaultRifle_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AssaultRifle;

extern(C++) interface TrDevice_AssaultRifle_MKD : TrDevice_AssaultRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_AssaultRifle_MKD")()); }
	private static __gshared TrDevice_AssaultRifle_MKD mDefaultProperties;
	@property final static TrDevice_AssaultRifle_MKD DefaultProperties() { mixin(MGDPC!(TrDevice_AssaultRifle_MKD, "TrDevice_AssaultRifle_MKD TribesGame.Default__TrDevice_AssaultRifle_MKD")()); }
}
