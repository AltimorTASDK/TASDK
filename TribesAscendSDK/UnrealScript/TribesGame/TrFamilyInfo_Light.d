module UnrealScript.TribesGame.TrFamilyInfo_Light;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo;

extern(C++) interface TrFamilyInfo_Light : TrFamilyInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light")); }
	private static __gshared TrFamilyInfo_Light mDefaultProperties;
	@property final static TrFamilyInfo_Light DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Light)("TrFamilyInfo_Light TribesGame.Default__TrFamilyInfo_Light")); }
}
