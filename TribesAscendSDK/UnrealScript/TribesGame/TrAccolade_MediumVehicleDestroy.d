module UnrealScript.TribesGame.TrAccolade_MediumVehicleDestroy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_MediumVehicleDestroy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_MediumVehicleDestroy")); }
	private static __gshared TrAccolade_MediumVehicleDestroy mDefaultProperties;
	@property final static TrAccolade_MediumVehicleDestroy DefaultProperties() { mixin(MGDPC("TrAccolade_MediumVehicleDestroy", "TrAccolade_MediumVehicleDestroy TribesGame.Default__TrAccolade_MediumVehicleDestroy")); }
}
