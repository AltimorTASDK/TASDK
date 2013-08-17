module UnrealScript.TribesGame.TrAccolade_FlagReturn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagReturn : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_FlagReturn")); }
	private static __gshared TrAccolade_FlagReturn mDefaultProperties;
	@property final static TrAccolade_FlagReturn DefaultProperties() { mixin(MGDPC("TrAccolade_FlagReturn", "TrAccolade_FlagReturn TribesGame.Default__TrAccolade_FlagReturn")); }
}
