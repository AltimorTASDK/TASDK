module UnrealScript.TribesGame.TrRepairStation_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRepairStation;

extern(C++) interface TrRepairStation_BloodEagle : TrRepairStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRepairStation_BloodEagle")); }
	private static __gshared TrRepairStation_BloodEagle mDefaultProperties;
	@property final static TrRepairStation_BloodEagle DefaultProperties() { mixin(MGDPC("TrRepairStation_BloodEagle", "TrRepairStation_BloodEagle TribesGame.Default__TrRepairStation_BloodEagle")); }
}
