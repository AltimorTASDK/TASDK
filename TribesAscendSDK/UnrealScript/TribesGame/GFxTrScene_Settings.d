module UnrealScript.TribesGame.GFxTrScene_Settings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Settings : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrScene_Settings")); }
	private static __gshared GFxTrScene_Settings mDefaultProperties;
	@property final static GFxTrScene_Settings DefaultProperties() { mixin(MGDPC("GFxTrScene_Settings", "GFxTrScene_Settings TribesGame.Default__GFxTrScene_Settings")); }
}
