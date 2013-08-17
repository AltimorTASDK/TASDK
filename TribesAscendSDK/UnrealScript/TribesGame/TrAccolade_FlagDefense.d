module UnrealScript.TribesGame.TrAccolade_FlagDefense;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagDefense : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FlagDefense")()); }
	private static __gshared TrAccolade_FlagDefense mDefaultProperties;
	@property final static TrAccolade_FlagDefense DefaultProperties() { mixin(MGDPC!(TrAccolade_FlagDefense, "TrAccolade_FlagDefense TribesGame.Default__TrAccolade_FlagDefense")()); }
}
