module UnrealScript.TribesGame.GFxTrScene_ExperienceSummary;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_ExperienceSummary : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_ExperienceSummary")); }
}
