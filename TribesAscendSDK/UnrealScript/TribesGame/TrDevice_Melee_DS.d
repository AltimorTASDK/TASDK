module UnrealScript.TribesGame.TrDevice_Melee_DS;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Melee;

extern(C++) interface TrDevice_Melee_DS : TrDevice_Melee
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Melee_DS")()); }
	private static __gshared TrDevice_Melee_DS mDefaultProperties;
	@property final static TrDevice_Melee_DS DefaultProperties() { mixin(MGDPC!(TrDevice_Melee_DS, "TrDevice_Melee_DS TribesGame.Default__TrDevice_Melee_DS")()); }
}
