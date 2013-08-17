module UnrealScript.TribesGame.TrAccolade_MultiKill_Double;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_MultiKill_Double : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_MultiKill_Double")()); }
	private static __gshared TrAccolade_MultiKill_Double mDefaultProperties;
	@property final static TrAccolade_MultiKill_Double DefaultProperties() { mixin(MGDPC!(TrAccolade_MultiKill_Double, "TrAccolade_MultiKill_Double TribesGame.Default__TrAccolade_MultiKill_Double")()); }
}
