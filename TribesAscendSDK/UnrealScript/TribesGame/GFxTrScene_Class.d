module UnrealScript.TribesGame.GFxTrScene_Class;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Class : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrScene_Class")()); }
	private static __gshared GFxTrScene_Class mDefaultProperties;
	@property final static GFxTrScene_Class DefaultProperties() { mixin(MGDPC!(GFxTrScene_Class, "GFxTrScene_Class TribesGame.Default__GFxTrScene_Class")()); }
}
