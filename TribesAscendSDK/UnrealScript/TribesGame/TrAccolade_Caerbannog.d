module UnrealScript.TribesGame.TrAccolade_Caerbannog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Caerbannog : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_Caerbannog")); }
	private static __gshared TrAccolade_Caerbannog mDefaultProperties;
	@property final static TrAccolade_Caerbannog DefaultProperties() { mixin(MGDPC("TrAccolade_Caerbannog", "TrAccolade_Caerbannog TribesGame.Default__TrAccolade_Caerbannog")); }
}
