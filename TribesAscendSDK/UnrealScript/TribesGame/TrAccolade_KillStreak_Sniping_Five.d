module UnrealScript.TribesGame.TrAccolade_KillStreak_Sniping_Five;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Sniping_Five : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_KillStreak_Sniping_Five")); }
	private static __gshared TrAccolade_KillStreak_Sniping_Five mDefaultProperties;
	@property final static TrAccolade_KillStreak_Sniping_Five DefaultProperties() { mixin(MGDPC("TrAccolade_KillStreak_Sniping_Five", "TrAccolade_KillStreak_Sniping_Five TribesGame.Default__TrAccolade_KillStreak_Sniping_Five")); }
}
