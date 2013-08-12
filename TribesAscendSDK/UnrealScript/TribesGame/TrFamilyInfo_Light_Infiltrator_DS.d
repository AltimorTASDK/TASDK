module UnrealScript.TribesGame.TrFamilyInfo_Light_Infiltrator_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Infiltrator;

extern(C++) interface TrFamilyInfo_Light_Infiltrator_DS : TrFamilyInfo_Light_Infiltrator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Infiltrator_DS")); }
	private static __gshared TrFamilyInfo_Light_Infiltrator_DS mDefaultProperties;
	@property final static TrFamilyInfo_Light_Infiltrator_DS DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Light_Infiltrator_DS)("TrFamilyInfo_Light_Infiltrator_DS TribesGame.Default__TrFamilyInfo_Light_Infiltrator_DS")); }
}
