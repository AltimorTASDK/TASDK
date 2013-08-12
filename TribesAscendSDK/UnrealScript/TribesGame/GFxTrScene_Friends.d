module UnrealScript.TribesGame.GFxTrScene_Friends;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Friends : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_Friends")); }
}
