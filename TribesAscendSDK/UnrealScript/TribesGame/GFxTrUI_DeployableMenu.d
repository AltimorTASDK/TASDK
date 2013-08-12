module UnrealScript.TribesGame.GFxTrUI_DeployableMenu;

import ScriptClasses;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;

extern(C++) interface GFxTrUI_DeployableMenu : UTGFxTweenableMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrUI_DeployableMenu")); }
}
