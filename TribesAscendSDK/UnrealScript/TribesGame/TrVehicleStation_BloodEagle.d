module UnrealScript.TribesGame.TrVehicleStation_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicleStation;

extern(C++) interface TrVehicleStation_BloodEagle : TrVehicleStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleStation_BloodEagle")()); }
	private static __gshared TrVehicleStation_BloodEagle mDefaultProperties;
	@property final static TrVehicleStation_BloodEagle DefaultProperties() { mixin(MGDPC!(TrVehicleStation_BloodEagle, "TrVehicleStation_BloodEagle TribesGame.Default__TrVehicleStation_BloodEagle")()); }
}
