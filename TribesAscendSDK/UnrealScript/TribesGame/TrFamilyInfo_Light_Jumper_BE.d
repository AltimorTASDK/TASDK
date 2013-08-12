module UnrealScript.TribesGame.TrFamilyInfo_Light_Jumper_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Jumper;

extern(C++) interface TrFamilyInfo_Light_Jumper_BE : TrFamilyInfo_Light_Jumper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Jumper_BE")); }
	private static __gshared TrFamilyInfo_Light_Jumper_BE mDefaultProperties;
	@property final static TrFamilyInfo_Light_Jumper_BE DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Light_Jumper_BE)("TrFamilyInfo_Light_Jumper_BE TribesGame.Default__TrFamilyInfo_Light_Jumper_BE")); }
}
