module UnrealScript.TribesGame.TrPowerGenerator_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPowerGenerator;

extern(C++) interface TrPowerGenerator_BloodEagle : TrPowerGenerator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPowerGenerator_BloodEagle")); }
	private static __gshared TrPowerGenerator_BloodEagle mDefaultProperties;
	@property final static TrPowerGenerator_BloodEagle DefaultProperties() { mixin(MGDPC("TrPowerGenerator_BloodEagle", "TrPowerGenerator_BloodEagle TribesGame.Default__TrPowerGenerator_BloodEagle")); }
}
