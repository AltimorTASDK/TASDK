module UnrealScript.TribesGame.TrAccolade_BaseAssist;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BaseAssist : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_BaseAssist")()); }
	private static __gshared TrAccolade_BaseAssist mDefaultProperties;
	@property final static TrAccolade_BaseAssist DefaultProperties() { mixin(MGDPC!(TrAccolade_BaseAssist, "TrAccolade_BaseAssist TribesGame.Default__TrAccolade_BaseAssist")()); }
}
