module UnrealScript.TribesGame.TrRank_10;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_10 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_10")); }
}
