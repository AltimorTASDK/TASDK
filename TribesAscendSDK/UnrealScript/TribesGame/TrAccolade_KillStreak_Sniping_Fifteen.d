module UnrealScript.TribesGame.TrAccolade_KillStreak_Sniping_Fifteen;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Sniping_Fifteen : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_KillStreak_Sniping_Fifteen")()); }
	private static __gshared TrAccolade_KillStreak_Sniping_Fifteen mDefaultProperties;
	@property final static TrAccolade_KillStreak_Sniping_Fifteen DefaultProperties() { mixin(MGDPC!(TrAccolade_KillStreak_Sniping_Fifteen, "TrAccolade_KillStreak_Sniping_Fifteen TribesGame.Default__TrAccolade_KillStreak_Sniping_Fifteen")()); }
}
