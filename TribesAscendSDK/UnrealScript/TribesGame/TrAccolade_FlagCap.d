module UnrealScript.TribesGame.TrAccolade_FlagCap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagCap : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FlagCap")()); }
	private static __gshared TrAccolade_FlagCap mDefaultProperties;
	@property final static TrAccolade_FlagCap DefaultProperties() { mixin(MGDPC!(TrAccolade_FlagCap, "TrAccolade_FlagCap TribesGame.Default__TrAccolade_FlagCap")()); }
}
