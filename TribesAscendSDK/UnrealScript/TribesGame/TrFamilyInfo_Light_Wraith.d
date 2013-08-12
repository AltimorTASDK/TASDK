module UnrealScript.TribesGame.TrFamilyInfo_Light_Wraith;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Wraith : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Wraith")); }
	private static __gshared TrFamilyInfo_Light_Wraith mDefaultProperties;
	@property final static TrFamilyInfo_Light_Wraith DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Light_Wraith)("TrFamilyInfo_Light_Wraith TribesGame.Default__TrFamilyInfo_Light_Wraith")); }
}
