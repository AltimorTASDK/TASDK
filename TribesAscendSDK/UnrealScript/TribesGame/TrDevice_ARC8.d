module UnrealScript.TribesGame.TrDevice_ARC8;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_ARC8 : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ARC8")()); }
	private static __gshared TrDevice_ARC8 mDefaultProperties;
	@property final static TrDevice_ARC8 DefaultProperties() { mixin(MGDPC!(TrDevice_ARC8, "TrDevice_ARC8 TribesGame.Default__TrDevice_ARC8")()); }
}
