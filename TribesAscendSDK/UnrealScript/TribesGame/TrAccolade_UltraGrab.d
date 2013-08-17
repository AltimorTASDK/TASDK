module UnrealScript.TribesGame.TrAccolade_UltraGrab;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade_FlagGrab;

extern(C++) interface TrAccolade_UltraGrab : TrAccolade_FlagGrab
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_UltraGrab")); }
	private static __gshared TrAccolade_UltraGrab mDefaultProperties;
	@property final static TrAccolade_UltraGrab DefaultProperties() { mixin(MGDPC("TrAccolade_UltraGrab", "TrAccolade_UltraGrab TribesGame.Default__TrAccolade_UltraGrab")); }
}
