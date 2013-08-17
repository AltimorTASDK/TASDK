module UnrealScript.TribesGame.TrVehicle_GravCycle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicle_GravCycle : TrVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVehicle_GravCycle")); }
	private static __gshared TrVehicle_GravCycle mDefaultProperties;
	@property final static TrVehicle_GravCycle DefaultProperties() { mixin(MGDPC("TrVehicle_GravCycle", "TrVehicle_GravCycle TribesGame.Default__TrVehicle_GravCycle")); }
}
