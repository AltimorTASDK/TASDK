module UnrealScript.TribesGame.TrAccolade_BenchEm;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BenchEm : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_BenchEm")()); }
	private static __gshared TrAccolade_BenchEm mDefaultProperties;
	@property final static TrAccolade_BenchEm DefaultProperties() { mixin(MGDPC!(TrAccolade_BenchEm, "TrAccolade_BenchEm TribesGame.Default__TrAccolade_BenchEm")()); }
}
