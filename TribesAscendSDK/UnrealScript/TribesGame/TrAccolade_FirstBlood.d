module UnrealScript.TribesGame.TrAccolade_FirstBlood;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FirstBlood : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FirstBlood")()); }
	private static __gshared TrAccolade_FirstBlood mDefaultProperties;
	@property final static TrAccolade_FirstBlood DefaultProperties() { mixin(MGDPC!(TrAccolade_FirstBlood, "TrAccolade_FirstBlood TribesGame.Default__TrAccolade_FirstBlood")()); }
}
