module UnrealScript.GFxUI.FlashMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.SwfMovie;

extern(C++) interface FlashMovie : SwfMovie
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GFxUI.FlashMovie")()); }
	private static __gshared FlashMovie mDefaultProperties;
	@property final static FlashMovie DefaultProperties() { mixin(MGDPC!(FlashMovie, "FlashMovie GFxUI.Default__FlashMovie")()); }
}
