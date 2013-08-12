module UnrealScript.TribesGame.TrFamilyInfo_Heavy;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo;

extern(C++) interface TrFamilyInfo_Heavy : TrFamilyInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy")); }
}
