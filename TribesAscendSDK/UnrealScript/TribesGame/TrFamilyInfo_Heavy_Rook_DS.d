module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Rook_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Rook;

extern(C++) interface TrFamilyInfo_Heavy_Rook_DS : TrFamilyInfo_Heavy_Rook
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Rook_DS")); }
	private static __gshared TrFamilyInfo_Heavy_Rook_DS mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Rook_DS DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Heavy_Rook_DS)("TrFamilyInfo_Heavy_Rook_DS TribesGame.Default__TrFamilyInfo_Heavy_Rook_DS")); }
}
