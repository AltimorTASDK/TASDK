module UnrealScript.TribesGame.TrAccolade_Roadkill;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Roadkill : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_Roadkill")()); }
	private static __gshared TrAccolade_Roadkill mDefaultProperties;
	@property final static TrAccolade_Roadkill DefaultProperties() { mixin(MGDPC!(TrAccolade_Roadkill, "TrAccolade_Roadkill TribesGame.Default__TrAccolade_Roadkill")()); }
}
