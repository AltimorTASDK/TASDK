module UnrealScript.TribesGame.GFxTrUI_LoadoutMenu;

import ScriptClasses;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;

extern(C++) interface GFxTrUI_LoadoutMenu : UTGFxTweenableMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrUI_LoadoutMenu")); }
	private static __gshared GFxTrUI_LoadoutMenu mDefaultProperties;
	@property final static GFxTrUI_LoadoutMenu DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrUI_LoadoutMenu)("GFxTrUI_LoadoutMenu TribesGame.Default__GFxTrUI_LoadoutMenu")); }
}
