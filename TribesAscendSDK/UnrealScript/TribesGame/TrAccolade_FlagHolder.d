module UnrealScript.TribesGame.TrAccolade_FlagHolder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagHolder : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_FlagHolder")); }
	private static __gshared TrAccolade_FlagHolder mDefaultProperties;
	@property final static TrAccolade_FlagHolder DefaultProperties() { mixin(MGDPC("TrAccolade_FlagHolder", "TrAccolade_FlagHolder TribesGame.Default__TrAccolade_FlagHolder")); }
}
