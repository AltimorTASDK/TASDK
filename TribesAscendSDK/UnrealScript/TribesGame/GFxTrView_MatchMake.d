module UnrealScript.TribesGame.GFxTrView_MatchMake;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrFront_View;

extern(C++) interface GFxTrView_MatchMake : GFxTrFront_View
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrView_MatchMake")); }
	private static __gshared GFxTrView_MatchMake mDefaultProperties;
	@property final static GFxTrView_MatchMake DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrView_MatchMake)("GFxTrView_MatchMake TribesGame.Default__GFxTrView_MatchMake")); }
}
