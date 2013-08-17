module UnrealScript.TribesGame.GFxTrScene_Friends;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Friends : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrScene_Friends")); }
	private static __gshared GFxTrScene_Friends mDefaultProperties;
	@property final static GFxTrScene_Friends DefaultProperties() { mixin(MGDPC("GFxTrScene_Friends", "GFxTrScene_Friends TribesGame.Default__GFxTrScene_Friends")); }
}
