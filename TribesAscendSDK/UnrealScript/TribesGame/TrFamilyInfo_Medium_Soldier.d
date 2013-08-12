module UnrealScript.TribesGame.TrFamilyInfo_Medium_Soldier;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Soldier : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Soldier")); }
	private static __gshared TrFamilyInfo_Medium_Soldier mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Soldier DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Medium_Soldier)("TrFamilyInfo_Medium_Soldier TribesGame.Default__TrFamilyInfo_Medium_Soldier")); }
}
