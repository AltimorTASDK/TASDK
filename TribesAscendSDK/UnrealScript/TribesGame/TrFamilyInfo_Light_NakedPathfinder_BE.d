module UnrealScript.TribesGame.TrFamilyInfo_Light_NakedPathfinder_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_NakedPathfinder;

extern(C++) interface TrFamilyInfo_Light_NakedPathfinder_BE : TrFamilyInfo_Light_NakedPathfinder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_NakedPathfinder_BE")); }
}
