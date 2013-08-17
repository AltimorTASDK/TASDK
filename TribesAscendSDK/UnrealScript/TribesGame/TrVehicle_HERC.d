module UnrealScript.TribesGame.TrVehicle_HERC;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicle_Tank;

extern(C++) interface TrVehicle_HERC : TrVehicle_Tank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVehicle_HERC")); }
	private static __gshared TrVehicle_HERC mDefaultProperties;
	@property final static TrVehicle_HERC DefaultProperties() { mixin(MGDPC("TrVehicle_HERC", "TrVehicle_HERC TribesGame.Default__TrVehicle_HERC")); }
}
