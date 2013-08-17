module UnrealScript.TribesGame.TrStormCore_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrStormCore;

extern(C++) interface TrStormCore_BloodEagle : TrStormCore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrStormCore_BloodEagle")); }
	private static __gshared TrStormCore_BloodEagle mDefaultProperties;
	@property final static TrStormCore_BloodEagle DefaultProperties() { mixin(MGDPC("TrStormCore_BloodEagle", "TrStormCore_BloodEagle TribesGame.Default__TrStormCore_BloodEagle")); }
}
