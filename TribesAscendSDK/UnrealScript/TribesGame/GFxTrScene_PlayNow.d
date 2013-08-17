module UnrealScript.TribesGame.GFxTrScene_PlayNow;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_PlayNow : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrScene_PlayNow")); }
	private static __gshared GFxTrScene_PlayNow mDefaultProperties;
	@property final static GFxTrScene_PlayNow DefaultProperties() { mixin(MGDPC("GFxTrScene_PlayNow", "GFxTrScene_PlayNow TribesGame.Default__GFxTrScene_PlayNow")); }
}
