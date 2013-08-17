module UnrealScript.TribesGame.TrAccolade_FlagAssist;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_FlagAssist : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_FlagAssist")()); }
	private static __gshared TrAccolade_FlagAssist mDefaultProperties;
	@property final static TrAccolade_FlagAssist DefaultProperties() { mixin(MGDPC!(TrAccolade_FlagAssist, "TrAccolade_FlagAssist TribesGame.Default__TrAccolade_FlagAssist")()); }
}
