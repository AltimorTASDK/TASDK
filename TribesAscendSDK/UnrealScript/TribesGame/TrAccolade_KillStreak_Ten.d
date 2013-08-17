module UnrealScript.TribesGame.TrAccolade_KillStreak_Ten;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Ten : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_KillStreak_Ten")); }
	private static __gshared TrAccolade_KillStreak_Ten mDefaultProperties;
	@property final static TrAccolade_KillStreak_Ten DefaultProperties() { mixin(MGDPC("TrAccolade_KillStreak_Ten", "TrAccolade_KillStreak_Ten TribesGame.Default__TrAccolade_KillStreak_Ten")); }
}
