module UnrealScript.TribesGame.TrAccolade_KillStreak_Twenty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_KillStreak_Twenty : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_KillStreak_Twenty")()); }
	private static __gshared TrAccolade_KillStreak_Twenty mDefaultProperties;
	@property final static TrAccolade_KillStreak_Twenty DefaultProperties() { mixin(MGDPC!(TrAccolade_KillStreak_Twenty, "TrAccolade_KillStreak_Twenty TribesGame.Default__TrAccolade_KillStreak_Twenty")()); }
}
