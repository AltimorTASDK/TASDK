module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Brute;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_Heavy_Brute : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Brute")); }
	private static __gshared TrFamilyInfo_Heavy_Brute mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Brute DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Heavy_Brute)("TrFamilyInfo_Heavy_Brute TribesGame.Default__TrFamilyInfo_Heavy_Brute")); }
}
