module UnrealScript.TribesGame.TrAccolade_GameComplete;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_GameComplete : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_GameComplete")()); }
	private static __gshared TrAccolade_GameComplete mDefaultProperties;
	@property final static TrAccolade_GameComplete DefaultProperties() { mixin(MGDPC!(TrAccolade_GameComplete, "TrAccolade_GameComplete TribesGame.Default__TrAccolade_GameComplete")()); }
}
