module UnrealScript.TribesGame.TrFamilyInfo_Medium_Ranger_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Ranger;

extern(C++) interface TrFamilyInfo_Medium_Ranger_DS : TrFamilyInfo_Medium_Ranger
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Ranger_DS")); }
}
