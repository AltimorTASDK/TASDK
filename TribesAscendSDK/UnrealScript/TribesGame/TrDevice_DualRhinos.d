module UnrealScript.TribesGame.TrDevice_DualRhinos;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_DualRhinos : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_DualRhinos")()); }
	private static __gshared TrDevice_DualRhinos mDefaultProperties;
	@property final static TrDevice_DualRhinos DefaultProperties() { mixin(MGDPC!(TrDevice_DualRhinos, "TrDevice_DualRhinos TribesGame.Default__TrDevice_DualRhinos")()); }
}
