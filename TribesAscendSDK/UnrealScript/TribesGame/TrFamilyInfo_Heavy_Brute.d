module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Brute;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_Heavy_Brute : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Heavy_Brute")); }
	private static __gshared TrFamilyInfo_Heavy_Brute mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Brute DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Heavy_Brute", "TrFamilyInfo_Heavy_Brute TribesGame.Default__TrFamilyInfo_Heavy_Brute")); }
}
