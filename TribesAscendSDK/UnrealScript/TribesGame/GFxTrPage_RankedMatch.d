module UnrealScript.TribesGame.GFxTrPage_RankedMatch;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RankedMatch : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_RankedMatch")); }
	private static __gshared GFxTrPage_RankedMatch mDefaultProperties;
	@property final static GFxTrPage_RankedMatch DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_RankedMatch)("GFxTrPage_RankedMatch TribesGame.Default__GFxTrPage_RankedMatch")); }
}
