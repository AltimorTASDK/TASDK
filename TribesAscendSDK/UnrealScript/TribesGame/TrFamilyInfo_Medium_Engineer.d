module UnrealScript.TribesGame.TrFamilyInfo_Medium_Engineer;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Engineer : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Engineer")); }
	private static __gshared TrFamilyInfo_Medium_Engineer mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Engineer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Medium_Engineer)("TrFamilyInfo_Medium_Engineer TribesGame.Default__TrFamilyInfo_Medium_Engineer")); }
}
