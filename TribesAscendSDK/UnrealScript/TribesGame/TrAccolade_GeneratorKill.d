module UnrealScript.TribesGame.TrAccolade_GeneratorKill;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_GeneratorKill : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_GeneratorKill")()); }
	private static __gshared TrAccolade_GeneratorKill mDefaultProperties;
	@property final static TrAccolade_GeneratorKill DefaultProperties() { mixin(MGDPC!(TrAccolade_GeneratorKill, "TrAccolade_GeneratorKill TribesGame.Default__TrAccolade_GeneratorKill")()); }
}
