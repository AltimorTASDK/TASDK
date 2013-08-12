module UnrealScript.TribesGame.TrSkin_Pathfinder_Merc;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Pathfinder_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Pathfinder_Merc")); }
}
