module UnrealScript.TribesGame.TrDevice_TCN4SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_TCN4SMG : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_TCN4SMG")()); }
	private static __gshared TrDevice_TCN4SMG mDefaultProperties;
	@property final static TrDevice_TCN4SMG DefaultProperties() { mixin(MGDPC!(TrDevice_TCN4SMG, "TrDevice_TCN4SMG TribesGame.Default__TrDevice_TCN4SMG")()); }
}
