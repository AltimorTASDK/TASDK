module UnrealScript.TribesGame.GFxTrScene_Login;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Login : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_Login")); }
	private static __gshared GFxTrScene_Login mDefaultProperties;
	@property final static GFxTrScene_Login DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrScene_Login)("GFxTrScene_Login TribesGame.Default__GFxTrScene_Login")); }
}
