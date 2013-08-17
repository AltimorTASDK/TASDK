module UnrealScript.TribesGame.TrAccolade_MultiKill_Ultra;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_MultiKill_Ultra : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_MultiKill_Ultra")()); }
	private static __gshared TrAccolade_MultiKill_Ultra mDefaultProperties;
	@property final static TrAccolade_MultiKill_Ultra DefaultProperties() { mixin(MGDPC!(TrAccolade_MultiKill_Ultra, "TrAccolade_MultiKill_Ultra TribesGame.Default__TrAccolade_MultiKill_Ultra")()); }
}
