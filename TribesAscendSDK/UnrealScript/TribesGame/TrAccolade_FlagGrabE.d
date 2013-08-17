module UnrealScript.TribesGame.TrAccolade_FlagGrabE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagGrabE : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FlagGrabE")()); }
	private static __gshared TrAccolade_FlagGrabE mDefaultProperties;
	@property final static TrAccolade_FlagGrabE DefaultProperties() { mixin(MGDPC!(TrAccolade_FlagGrabE, "TrAccolade_FlagGrabE TribesGame.Default__TrAccolade_FlagGrabE")()); }
}
