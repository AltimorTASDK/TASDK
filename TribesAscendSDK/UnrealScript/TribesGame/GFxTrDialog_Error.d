module UnrealScript.TribesGame.GFxTrDialog_Error;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrFront_Dialog;

extern(C++) interface GFxTrDialog_Error : GFxTrFront_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrDialog_Error")); }
	private static __gshared GFxTrDialog_Error mDefaultProperties;
	@property final static GFxTrDialog_Error DefaultProperties() { mixin(MGDPC("GFxTrDialog_Error", "GFxTrDialog_Error TribesGame.Default__GFxTrDialog_Error")); }
}
