module UnrealScript.TribesGame.TrAward_Speed_Skied;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Speed_Skied : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Speed_Skied")); }
}
