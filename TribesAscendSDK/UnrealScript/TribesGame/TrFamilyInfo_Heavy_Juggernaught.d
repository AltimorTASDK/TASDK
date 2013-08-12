module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Juggernaught;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_Heavy_Juggernaught : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Juggernaught")); }
	private static __gshared TrFamilyInfo_Heavy_Juggernaught mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Juggernaught DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Heavy_Juggernaught)("TrFamilyInfo_Heavy_Juggernaught TribesGame.Default__TrFamilyInfo_Heavy_Juggernaught")); }
}
