module UnrealScript.TribesGame.TrFamilyInfo_Light_Jumper_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Jumper;

extern(C++) interface TrFamilyInfo_Light_Jumper_DS : TrFamilyInfo_Light_Jumper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Jumper_DS")); }
	private static __gshared TrFamilyInfo_Light_Jumper_DS mDefaultProperties;
	@property final static TrFamilyInfo_Light_Jumper_DS DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Light_Jumper_DS)("TrFamilyInfo_Light_Jumper_DS TribesGame.Default__TrFamilyInfo_Light_Jumper_DS")); }
}
