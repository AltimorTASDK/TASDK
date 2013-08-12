module UnrealScript.GFxUI.FlashMovie;

import ScriptClasses;
import UnrealScript.GFxUI.SwfMovie;

extern(C++) interface FlashMovie : SwfMovie
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.FlashMovie")); }
	private static __gshared FlashMovie mDefaultProperties;
	@property final static FlashMovie DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FlashMovie)("FlashMovie GFxUI.Default__FlashMovie")); }
}
