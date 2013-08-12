module UnrealScript.TribesGame.GFxTrFront_Dialog;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrFront_View;

extern(C++) interface GFxTrFront_Dialog : GFxTrFront_View
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrFront_Dialog")); }
}
