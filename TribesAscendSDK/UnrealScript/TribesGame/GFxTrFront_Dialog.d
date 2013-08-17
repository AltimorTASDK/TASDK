module UnrealScript.TribesGame.GFxTrFront_Dialog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrFront_View;

extern(C++) interface GFxTrFront_Dialog : GFxTrFront_View
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrFront_Dialog")); }
	private static __gshared GFxTrFront_Dialog mDefaultProperties;
	@property final static GFxTrFront_Dialog DefaultProperties() { mixin(MGDPC("GFxTrFront_Dialog", "GFxTrFront_Dialog TribesGame.Default__GFxTrFront_Dialog")); }
}
