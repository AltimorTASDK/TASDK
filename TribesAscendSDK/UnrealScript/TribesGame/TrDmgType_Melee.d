module UnrealScript.TribesGame.TrDmgType_Melee;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Melee : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Melee")()); }
	private static __gshared TrDmgType_Melee mDefaultProperties;
	@property final static TrDmgType_Melee DefaultProperties() { mixin(MGDPC!(TrDmgType_Melee, "TrDmgType_Melee TribesGame.Default__TrDmgType_Melee")()); }
}
