module UnrealScript.TribesGame.TrFamilyInfo_Light_Pathfinder;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Pathfinder : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Pathfinder")); }
}
