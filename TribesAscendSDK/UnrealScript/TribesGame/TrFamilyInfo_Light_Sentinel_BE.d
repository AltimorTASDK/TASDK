module UnrealScript.TribesGame.TrFamilyInfo_Light_Sentinel_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Sentinel;

extern(C++) interface TrFamilyInfo_Light_Sentinel_BE : TrFamilyInfo_Light_Sentinel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Sentinel_BE")); }
	private static __gshared TrFamilyInfo_Light_Sentinel_BE mDefaultProperties;
	@property final static TrFamilyInfo_Light_Sentinel_BE DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Light_Sentinel_BE)("TrFamilyInfo_Light_Sentinel_BE TribesGame.Default__TrFamilyInfo_Light_Sentinel_BE")); }
}
