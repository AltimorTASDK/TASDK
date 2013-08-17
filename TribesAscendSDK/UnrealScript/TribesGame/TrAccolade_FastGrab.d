module UnrealScript.TribesGame.TrAccolade_FastGrab;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade_FlagGrab;

extern(C++) interface TrAccolade_FastGrab : TrAccolade_FlagGrab
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FastGrab")()); }
	private static __gshared TrAccolade_FastGrab mDefaultProperties;
	@property final static TrAccolade_FastGrab DefaultProperties() { mixin(MGDPC!(TrAccolade_FastGrab, "TrAccolade_FastGrab TribesGame.Default__TrAccolade_FastGrab")()); }
}
