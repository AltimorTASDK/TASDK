module UnrealScript.TribesGame.TrFamilyInfo_Heavy;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo;

extern(C++) interface TrFamilyInfo_Heavy : TrFamilyInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy")); }
	private static __gshared TrFamilyInfo_Heavy mDefaultProperties;
	@property final static TrFamilyInfo_Heavy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Heavy)("TrFamilyInfo_Heavy TribesGame.Default__TrFamilyInfo_Heavy")); }
}
