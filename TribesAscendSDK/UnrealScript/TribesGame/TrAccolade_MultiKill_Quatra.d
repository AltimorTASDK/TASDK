module UnrealScript.TribesGame.TrAccolade_MultiKill_Quatra;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_MultiKill_Quatra : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_MultiKill_Quatra")()); }
	private static __gshared TrAccolade_MultiKill_Quatra mDefaultProperties;
	@property final static TrAccolade_MultiKill_Quatra DefaultProperties() { mixin(MGDPC!(TrAccolade_MultiKill_Quatra, "TrAccolade_MultiKill_Quatra TribesGame.Default__TrAccolade_MultiKill_Quatra")()); }
}
