module UnrealScript.TribesGame.TrAccolade_FlagGrab;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagGrab : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FlagGrab")()); }
	private static __gshared TrAccolade_FlagGrab mDefaultProperties;
	@property final static TrAccolade_FlagGrab DefaultProperties() { mixin(MGDPC!(TrAccolade_FlagGrab, "TrAccolade_FlagGrab TribesGame.Default__TrAccolade_FlagGrab")()); }
}
