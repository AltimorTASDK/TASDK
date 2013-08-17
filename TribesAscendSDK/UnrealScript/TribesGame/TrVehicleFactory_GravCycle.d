module UnrealScript.TribesGame.TrVehicleFactory_GravCycle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTVehicleFactory;

extern(C++) interface TrVehicleFactory_GravCycle : UTVehicleFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVehicleFactory_GravCycle")); }
	private static __gshared TrVehicleFactory_GravCycle mDefaultProperties;
	@property final static TrVehicleFactory_GravCycle DefaultProperties() { mixin(MGDPC("TrVehicleFactory_GravCycle", "TrVehicleFactory_GravCycle TribesGame.Default__TrVehicleFactory_GravCycle")); }
}
