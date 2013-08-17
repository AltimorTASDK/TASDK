module UnrealScript.TribesGame.TrAccolade_TribalHonor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_TribalHonor : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_TribalHonor")); }
	private static __gshared TrAccolade_TribalHonor mDefaultProperties;
	@property final static TrAccolade_TribalHonor DefaultProperties() { mixin(MGDPC("TrAccolade_TribalHonor", "TrAccolade_TribalHonor TribesGame.Default__TrAccolade_TribalHonor")); }
}
