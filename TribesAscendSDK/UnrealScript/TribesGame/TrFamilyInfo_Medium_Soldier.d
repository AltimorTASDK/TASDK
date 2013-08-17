module UnrealScript.TribesGame.TrFamilyInfo_Medium_Soldier;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Soldier : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Medium_Soldier")); }
	private static __gshared TrFamilyInfo_Medium_Soldier mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Soldier DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Medium_Soldier", "TrFamilyInfo_Medium_Soldier TribesGame.Default__TrFamilyInfo_Medium_Soldier")); }
}
