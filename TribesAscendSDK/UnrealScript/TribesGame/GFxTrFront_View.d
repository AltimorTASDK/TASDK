module UnrealScript.TribesGame.GFxTrFront_View;

import ScriptClasses;
import UnrealScript.UTGame.GFxUIView;

extern(C++) interface GFxTrFront_View : GFxUIView
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrFront_View")); }
	private static __gshared GFxTrFront_View mDefaultProperties;
	@property final static GFxTrFront_View DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrFront_View)("GFxTrFront_View TribesGame.Default__GFxTrFront_View")); }
}
