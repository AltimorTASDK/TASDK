module UnrealScript.TribesGame.GFxTrDialog_Info;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrFront_Dialog;

extern(C++) interface GFxTrDialog_Info : GFxTrFront_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrDialog_Info")()); }
	private static __gshared GFxTrDialog_Info mDefaultProperties;
	@property final static GFxTrDialog_Info DefaultProperties() { mixin(MGDPC!(GFxTrDialog_Info, "GFxTrDialog_Info TribesGame.Default__GFxTrDialog_Info")()); }
}
