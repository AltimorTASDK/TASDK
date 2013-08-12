module UnrealScript.TribesGame.TrFamilyInfo_Medium_Scrambler;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Scrambler : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Scrambler")); }
	private static __gshared TrFamilyInfo_Medium_Scrambler mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Scrambler DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Medium_Scrambler)("TrFamilyInfo_Medium_Scrambler TribesGame.Default__TrFamilyInfo_Medium_Scrambler")); }
}
