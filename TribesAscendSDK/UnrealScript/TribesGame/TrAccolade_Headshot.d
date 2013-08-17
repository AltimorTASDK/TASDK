module UnrealScript.TribesGame.TrAccolade_Headshot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Headshot : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_Headshot")); }
	private static __gshared TrAccolade_Headshot mDefaultProperties;
	@property final static TrAccolade_Headshot DefaultProperties() { mixin(MGDPC("TrAccolade_Headshot", "TrAccolade_Headshot TribesGame.Default__TrAccolade_Headshot")); }
}
