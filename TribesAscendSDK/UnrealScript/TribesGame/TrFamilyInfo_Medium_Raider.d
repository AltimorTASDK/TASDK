module UnrealScript.TribesGame.TrFamilyInfo_Medium_Raider;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Raider : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Raider")); }
}
