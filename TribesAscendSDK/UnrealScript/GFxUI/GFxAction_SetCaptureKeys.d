module UnrealScript.GFxUI.GFxAction_SetCaptureKeys;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_SetCaptureKeys : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxAction_SetCaptureKeys")); }
	private static __gshared GFxAction_SetCaptureKeys mDefaultProperties;
	@property final static GFxAction_SetCaptureKeys DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxAction_SetCaptureKeys)("GFxAction_SetCaptureKeys GFxUI.Default__GFxAction_SetCaptureKeys")); }
	@property final auto ref
	{
		ScriptArray!(ScriptName) CaptureKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 236); }
		GFxMoviePlayer Movie() { return *cast(GFxMoviePlayer*)(cast(size_t)cast(void*)this + 232); }
	}
}
