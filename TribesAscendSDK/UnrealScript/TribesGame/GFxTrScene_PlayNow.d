module UnrealScript.TribesGame.GFxTrScene_PlayNow;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_PlayNow : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_PlayNow")); }
	private static __gshared GFxTrScene_PlayNow mDefaultProperties;
	@property final static GFxTrScene_PlayNow DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrScene_PlayNow)("GFxTrScene_PlayNow TribesGame.Default__GFxTrScene_PlayNow")); }
}
