module UnrealScript.TribesGame.TrAccolade_Miracle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Miracle : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_Miracle")()); }
	private static __gshared TrAccolade_Miracle mDefaultProperties;
	@property final static TrAccolade_Miracle DefaultProperties() { mixin(MGDPC!(TrAccolade_Miracle, "TrAccolade_Miracle TribesGame.Default__TrAccolade_Miracle")()); }
}
