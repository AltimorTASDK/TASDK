module UnrealScript.TribesGame.GFxTrFront_View;

import ScriptClasses;
import UnrealScript.UTGame.GFxUIView;

extern(C++) interface GFxTrFront_View : GFxUIView
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrFront_View")); }
}
