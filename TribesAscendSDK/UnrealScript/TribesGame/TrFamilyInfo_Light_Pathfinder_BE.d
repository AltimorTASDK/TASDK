module UnrealScript.TribesGame.TrFamilyInfo_Light_Pathfinder_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Pathfinder;

extern(C++) interface TrFamilyInfo_Light_Pathfinder_BE : TrFamilyInfo_Light_Pathfinder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Pathfinder_BE")); }
}
