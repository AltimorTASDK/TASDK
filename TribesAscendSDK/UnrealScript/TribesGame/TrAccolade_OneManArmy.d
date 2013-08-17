module UnrealScript.TribesGame.TrAccolade_OneManArmy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_OneManArmy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_OneManArmy")()); }
	private static __gshared TrAccolade_OneManArmy mDefaultProperties;
	@property final static TrAccolade_OneManArmy DefaultProperties() { mixin(MGDPC!(TrAccolade_OneManArmy, "TrAccolade_OneManArmy TribesGame.Default__TrAccolade_OneManArmy")()); }
}
