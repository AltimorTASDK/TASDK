module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Brute_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Brute;

extern(C++) interface TrFamilyInfo_Heavy_Brute_BE : TrFamilyInfo_Heavy_Brute
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Heavy_Brute_BE")()); }
	private static __gshared TrFamilyInfo_Heavy_Brute_BE mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Brute_BE DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Heavy_Brute_BE, "TrFamilyInfo_Heavy_Brute_BE TribesGame.Default__TrFamilyInfo_Heavy_Brute_BE")()); }
}
