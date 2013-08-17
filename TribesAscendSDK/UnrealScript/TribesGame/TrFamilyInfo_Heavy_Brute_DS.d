module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Brute_DS;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Brute;

extern(C++) interface TrFamilyInfo_Heavy_Brute_DS : TrFamilyInfo_Heavy_Brute
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Heavy_Brute_DS")); }
	private static __gshared TrFamilyInfo_Heavy_Brute_DS mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Brute_DS DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Heavy_Brute_DS", "TrFamilyInfo_Heavy_Brute_DS TribesGame.Default__TrFamilyInfo_Heavy_Brute_DS")); }
}
