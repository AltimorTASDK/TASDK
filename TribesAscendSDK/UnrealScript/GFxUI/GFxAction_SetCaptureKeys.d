module UnrealScript.GFxUI.GFxAction_SetCaptureKeys;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_SetCaptureKeys : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.GFxAction_SetCaptureKeys")); }
	private static __gshared GFxAction_SetCaptureKeys mDefaultProperties;
	@property final static GFxAction_SetCaptureKeys DefaultProperties() { mixin(MGDPC("GFxAction_SetCaptureKeys", "GFxAction_SetCaptureKeys GFxUI.Default__GFxAction_SetCaptureKeys")); }
	@property final auto ref
	{
		ScriptArray!(ScriptName) CaptureKeys() { mixin(MGPC("ScriptArray!(ScriptName)", 236)); }
		GFxMoviePlayer Movie() { mixin(MGPC("GFxMoviePlayer", 232)); }
	}
}
