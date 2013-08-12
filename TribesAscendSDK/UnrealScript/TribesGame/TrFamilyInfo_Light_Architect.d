module UnrealScript.TribesGame.TrFamilyInfo_Light_Architect;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Architect : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Architect")); }
	private static __gshared TrFamilyInfo_Light_Architect mDefaultProperties;
	@property final static TrFamilyInfo_Light_Architect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Light_Architect)("TrFamilyInfo_Light_Architect TribesGame.Default__TrFamilyInfo_Light_Architect")); }
}
