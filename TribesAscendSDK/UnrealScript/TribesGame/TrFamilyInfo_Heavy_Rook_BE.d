module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Rook_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Rook;

extern(C++) interface TrFamilyInfo_Heavy_Rook_BE : TrFamilyInfo_Heavy_Rook
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Rook_BE")); }
}
