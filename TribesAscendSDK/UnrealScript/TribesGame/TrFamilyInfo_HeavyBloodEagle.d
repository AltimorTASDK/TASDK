module UnrealScript.TribesGame.TrFamilyInfo_HeavyBloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_HeavyBloodEagle : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_HeavyBloodEagle")); }
	private static __gshared TrFamilyInfo_HeavyBloodEagle mDefaultProperties;
	@property final static TrFamilyInfo_HeavyBloodEagle DefaultProperties() { mixin(MGDPC("TrFamilyInfo_HeavyBloodEagle", "TrFamilyInfo_HeavyBloodEagle TribesGame.Default__TrFamilyInfo_HeavyBloodEagle")); }
}
