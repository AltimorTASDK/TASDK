module UnrealScript.TribesGame.TrAccolade_Revenge;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Revenge : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_Revenge")()); }
	private static __gshared TrAccolade_Revenge mDefaultProperties;
	@property final static TrAccolade_Revenge DefaultProperties() { mixin(MGDPC!(TrAccolade_Revenge, "TrAccolade_Revenge TribesGame.Default__TrAccolade_Revenge")()); }
}
