module UnrealScript.TribesGame.TrAward_Deaths;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Deaths : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Deaths")); }
}
