module UnrealScript.TribesGame.TrFamilyInfo_Light_Architect_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Architect;

extern(C++) interface TrFamilyInfo_Light_Architect_BE : TrFamilyInfo_Light_Architect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Architect_BE")); }
}
