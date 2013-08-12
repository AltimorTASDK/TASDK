module UnrealScript.TribesGame.TrFamilyInfo_LightBloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_LightBloodEagle : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_LightBloodEagle")); }
	private static __gshared TrFamilyInfo_LightBloodEagle mDefaultProperties;
	@property final static TrFamilyInfo_LightBloodEagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_LightBloodEagle)("TrFamilyInfo_LightBloodEagle TribesGame.Default__TrFamilyInfo_LightBloodEagle")); }
}
