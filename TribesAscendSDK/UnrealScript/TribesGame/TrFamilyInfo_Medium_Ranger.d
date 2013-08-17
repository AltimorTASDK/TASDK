module UnrealScript.TribesGame.TrFamilyInfo_Medium_Ranger;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Ranger : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Medium_Ranger")); }
	private static __gshared TrFamilyInfo_Medium_Ranger mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Ranger DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Medium_Ranger", "TrFamilyInfo_Medium_Ranger TribesGame.Default__TrFamilyInfo_Medium_Ranger")); }
}
