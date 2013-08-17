module UnrealScript.TribesGame.TrAccolade_Melee;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Melee : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_Melee")()); }
	private static __gshared TrAccolade_Melee mDefaultProperties;
	@property final static TrAccolade_Melee DefaultProperties() { mixin(MGDPC!(TrAccolade_Melee, "TrAccolade_Melee TribesGame.Default__TrAccolade_Melee")()); }
}
