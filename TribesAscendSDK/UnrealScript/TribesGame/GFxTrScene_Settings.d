module UnrealScript.TribesGame.GFxTrScene_Settings;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Settings : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_Settings")); }
	private static __gshared GFxTrScene_Settings mDefaultProperties;
	@property final static GFxTrScene_Settings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrScene_Settings)("GFxTrScene_Settings TribesGame.Default__GFxTrScene_Settings")); }
}
