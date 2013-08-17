module UnrealScript.TribesGame.TrAccolade_KillStreak_TwentyFive;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_TwentyFive : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_KillStreak_TwentyFive")); }
	private static __gshared TrAccolade_KillStreak_TwentyFive mDefaultProperties;
	@property final static TrAccolade_KillStreak_TwentyFive DefaultProperties() { mixin(MGDPC("TrAccolade_KillStreak_TwentyFive", "TrAccolade_KillStreak_TwentyFive TribesGame.Default__TrAccolade_KillStreak_TwentyFive")); }
}
