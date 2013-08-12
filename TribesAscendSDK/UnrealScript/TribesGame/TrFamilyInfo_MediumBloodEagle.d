module UnrealScript.TribesGame.TrFamilyInfo_MediumBloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_MediumBloodEagle : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_MediumBloodEagle")); }
	private static __gshared TrFamilyInfo_MediumBloodEagle mDefaultProperties;
	@property final static TrFamilyInfo_MediumBloodEagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_MediumBloodEagle)("TrFamilyInfo_MediumBloodEagle TribesGame.Default__TrFamilyInfo_MediumBloodEagle")); }
}
