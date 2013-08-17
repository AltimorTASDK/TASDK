module UnrealScript.GFxUI.GFxAction_Invoke;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_Invoke : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.GFxAction_Invoke")); }
	private static __gshared GFxAction_Invoke mDefaultProperties;
	@property final static GFxAction_Invoke DefaultProperties() { mixin(MGDPC("GFxAction_Invoke", "GFxAction_Invoke GFxUI.Default__GFxAction_Invoke")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsValidLevelSequenceObject;
		public @property static final ScriptFunction IsValidLevelSequenceObject() { mixin(MGF("mIsValidLevelSequenceObject", "Function GFxUI.GFxAction_Invoke.IsValidLevelSequenceObject")); }
	}
	@property final auto ref
	{
		ScriptArray!(GFxMoviePlayer.ASValue) Arguments() { mixin(MGPC("ScriptArray!(GFxMoviePlayer.ASValue)", 248)); }
		ScriptString MethodName() { mixin(MGPC("ScriptString", 236)); }
		GFxMoviePlayer Movie() { mixin(MGPC("GFxMoviePlayer", 232)); }
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidLevelSequenceObject, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
