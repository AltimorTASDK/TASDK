module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Brute_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Brute;

extern(C++) interface TrFamilyInfo_Heavy_Brute_DS : TrFamilyInfo_Heavy_Brute
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Brute_DS")); }
}
