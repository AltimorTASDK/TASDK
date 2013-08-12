module UnrealScript.TribesGame.TrFamilyInfo_Medium_Warder_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Warder;

extern(C++) interface TrFamilyInfo_Medium_Warder_BE : TrFamilyInfo_Medium_Warder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Medium_Warder_BE")); }
}
