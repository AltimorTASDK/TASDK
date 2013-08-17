module UnrealScript.TribesGame.TrDevice_Melee_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Melee;

extern(C++) interface TrDevice_Melee_BE : TrDevice_Melee
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Melee_BE")()); }
	private static __gshared TrDevice_Melee_BE mDefaultProperties;
	@property final static TrDevice_Melee_BE DefaultProperties() { mixin(MGDPC!(TrDevice_Melee_BE, "TrDevice_Melee_BE TribesGame.Default__TrDevice_Melee_BE")()); }
}
