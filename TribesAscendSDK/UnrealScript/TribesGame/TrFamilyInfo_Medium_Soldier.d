module UnrealScript.TribesGame.TrFamilyInfo_Medium_Soldier;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Soldier : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Soldier")); }
}
