module UnrealScript.TribesGame.GFxTrScene_Class;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Class : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_Class")); }
	private static __gshared GFxTrScene_Class mDefaultProperties;
	@property final static GFxTrScene_Class DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrScene_Class)("GFxTrScene_Class TribesGame.Default__GFxTrScene_Class")); }
}
