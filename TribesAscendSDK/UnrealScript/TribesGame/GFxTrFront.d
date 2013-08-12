module UnrealScript.TribesGame.GFxTrFront;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;

extern(C++) interface GFxTrFront : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrFront")); }
	private static __gshared GFxTrFront mDefaultProperties;
	@property final static GFxTrFront DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrFront)("GFxTrFront TribesGame.Default__GFxTrFront")); }
}
