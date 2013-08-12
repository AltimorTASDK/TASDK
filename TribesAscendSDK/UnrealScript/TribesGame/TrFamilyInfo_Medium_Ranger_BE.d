module UnrealScript.TribesGame.TrFamilyInfo_Medium_Ranger_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Ranger;

extern(C++) interface TrFamilyInfo_Medium_Ranger_BE : TrFamilyInfo_Medium_Ranger
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Ranger_BE")); }
}
