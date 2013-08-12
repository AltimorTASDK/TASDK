module UnrealScript.TribesGame.TrFamilyInfo_Medium_Engineer_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Engineer;

extern(C++) interface TrFamilyInfo_Medium_Engineer_BE : TrFamilyInfo_Medium_Engineer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Engineer_BE")); }
	private static __gshared TrFamilyInfo_Medium_Engineer_BE mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Engineer_BE DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Medium_Engineer_BE)("TrFamilyInfo_Medium_Engineer_BE TribesGame.Default__TrFamilyInfo_Medium_Engineer_BE")); }
}
