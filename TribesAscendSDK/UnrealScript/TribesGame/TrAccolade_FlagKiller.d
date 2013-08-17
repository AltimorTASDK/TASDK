module UnrealScript.TribesGame.TrAccolade_FlagKiller;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagKiller : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_FlagKiller")); }
	private static __gshared TrAccolade_FlagKiller mDefaultProperties;
	@property final static TrAccolade_FlagKiller DefaultProperties() { mixin(MGDPC("TrAccolade_FlagKiller", "TrAccolade_FlagKiller TribesGame.Default__TrAccolade_FlagKiller")); }
}
