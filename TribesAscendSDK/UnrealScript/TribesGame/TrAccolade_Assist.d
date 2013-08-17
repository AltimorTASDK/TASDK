module UnrealScript.TribesGame.TrAccolade_Assist;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Assist : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_Assist")); }
	private static __gshared TrAccolade_Assist mDefaultProperties;
	@property final static TrAccolade_Assist DefaultProperties() { mixin(MGDPC("TrAccolade_Assist", "TrAccolade_Assist TribesGame.Default__TrAccolade_Assist")); }
}
