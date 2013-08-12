module UnrealScript.TribesGame.TrFamilyInfo_Medium;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo;

extern(C++) interface TrFamilyInfo_Medium : TrFamilyInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium")); }
	private static __gshared TrFamilyInfo_Medium mDefaultProperties;
	@property final static TrFamilyInfo_Medium DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Medium)("TrFamilyInfo_Medium TribesGame.Default__TrFamilyInfo_Medium")); }
}
