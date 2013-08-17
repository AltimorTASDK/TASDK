module UnrealScript.TribesGame.GFxTrUI_DeployableMenu;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;

extern(C++) interface GFxTrUI_DeployableMenu : UTGFxTweenableMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrUI_DeployableMenu")); }
	private static __gshared GFxTrUI_DeployableMenu mDefaultProperties;
	@property final static GFxTrUI_DeployableMenu DefaultProperties() { mixin(MGDPC("GFxTrUI_DeployableMenu", "GFxTrUI_DeployableMenu TribesGame.Default__GFxTrUI_DeployableMenu")); }
}
