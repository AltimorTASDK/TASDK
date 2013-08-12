module UnrealScript.TribesGame.TrFamilyInfo_Light_Infiltrator_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Infiltrator;

extern(C++) interface TrFamilyInfo_Light_Infiltrator_BE : TrFamilyInfo_Light_Infiltrator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Infiltrator_BE")); }
}
