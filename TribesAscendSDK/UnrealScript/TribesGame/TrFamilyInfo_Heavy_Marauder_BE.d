module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Marauder_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Marauder;

extern(C++) interface TrFamilyInfo_Heavy_Marauder_BE : TrFamilyInfo_Heavy_Marauder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Marauder_BE")); }
	private static __gshared TrFamilyInfo_Heavy_Marauder_BE mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Marauder_BE DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Heavy_Marauder_BE)("TrFamilyInfo_Heavy_Marauder_BE TribesGame.Default__TrFamilyInfo_Heavy_Marauder_BE")); }
}
