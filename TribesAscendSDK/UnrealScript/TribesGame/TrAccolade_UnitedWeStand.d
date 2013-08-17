module UnrealScript.TribesGame.TrAccolade_UnitedWeStand;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_UnitedWeStand : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_UnitedWeStand")); }
	private static __gshared TrAccolade_UnitedWeStand mDefaultProperties;
	@property final static TrAccolade_UnitedWeStand DefaultProperties() { mixin(MGDPC("TrAccolade_UnitedWeStand", "TrAccolade_UnitedWeStand TribesGame.Default__TrAccolade_UnitedWeStand")); }
}
