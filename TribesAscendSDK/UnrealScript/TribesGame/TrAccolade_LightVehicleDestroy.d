module UnrealScript.TribesGame.TrAccolade_LightVehicleDestroy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_LightVehicleDestroy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_LightVehicleDestroy")); }
	private static __gshared TrAccolade_LightVehicleDestroy mDefaultProperties;
	@property final static TrAccolade_LightVehicleDestroy DefaultProperties() { mixin(MGDPC("TrAccolade_LightVehicleDestroy", "TrAccolade_LightVehicleDestroy TribesGame.Default__TrAccolade_LightVehicleDestroy")); }
}
