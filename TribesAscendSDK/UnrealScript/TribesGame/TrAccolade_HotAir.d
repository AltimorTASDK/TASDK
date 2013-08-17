module UnrealScript.TribesGame.TrAccolade_HotAir;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_HotAir : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_HotAir")); }
	private static __gshared TrAccolade_HotAir mDefaultProperties;
	@property final static TrAccolade_HotAir DefaultProperties() { mixin(MGDPC("TrAccolade_HotAir", "TrAccolade_HotAir TribesGame.Default__TrAccolade_HotAir")); }
}
