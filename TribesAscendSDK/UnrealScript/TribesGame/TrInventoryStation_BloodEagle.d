module UnrealScript.TribesGame.TrInventoryStation_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrInventoryStation;

extern(C++) interface TrInventoryStation_BloodEagle : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrInventoryStation_BloodEagle")); }
	private static __gshared TrInventoryStation_BloodEagle mDefaultProperties;
	@property final static TrInventoryStation_BloodEagle DefaultProperties() { mixin(MGDPC("TrInventoryStation_BloodEagle", "TrInventoryStation_BloodEagle TribesGame.Default__TrInventoryStation_BloodEagle")); }
}
