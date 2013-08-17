module UnrealScript.TribesGame.GFxTrFront_View;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUIView;

extern(C++) interface GFxTrFront_View : GFxUIView
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrFront_View")()); }
	private static __gshared GFxTrFront_View mDefaultProperties;
	@property final static GFxTrFront_View DefaultProperties() { mixin(MGDPC!(GFxTrFront_View, "GFxTrFront_View TribesGame.Default__GFxTrFront_View")()); }
}
