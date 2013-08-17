module UnrealScript.TribesGame.TrFamilyInfo_MediumBloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_MediumBloodEagle : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_MediumBloodEagle")); }
	private static __gshared TrFamilyInfo_MediumBloodEagle mDefaultProperties;
	@property final static TrFamilyInfo_MediumBloodEagle DefaultProperties() { mixin(MGDPC("TrFamilyInfo_MediumBloodEagle", "TrFamilyInfo_MediumBloodEagle TribesGame.Default__TrFamilyInfo_MediumBloodEagle")); }
}
