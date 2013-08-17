module UnrealScript.TribesGame.GFxTrFront;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxMoviePlayer;

extern(C++) interface GFxTrFront : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrFront")); }
	private static __gshared GFxTrFront mDefaultProperties;
	@property final static GFxTrFront DefaultProperties() { mixin(MGDPC("GFxTrFront", "GFxTrFront TribesGame.Default__GFxTrFront")); }
}
