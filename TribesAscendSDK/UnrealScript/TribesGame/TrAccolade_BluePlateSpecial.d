module UnrealScript.TribesGame.TrAccolade_BluePlateSpecial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BluePlateSpecial : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_BluePlateSpecial")); }
	private static __gshared TrAccolade_BluePlateSpecial mDefaultProperties;
	@property final static TrAccolade_BluePlateSpecial DefaultProperties() { mixin(MGDPC("TrAccolade_BluePlateSpecial", "TrAccolade_BluePlateSpecial TribesGame.Default__TrAccolade_BluePlateSpecial")); }
}
