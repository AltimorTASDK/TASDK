module UnrealScript.GFxUI.GFxAction_CloseMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_CloseMovie : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.GFxAction_CloseMovie")); }
	private static __gshared GFxAction_CloseMovie mDefaultProperties;
	@property final static GFxAction_CloseMovie DefaultProperties() { mixin(MGDPC("GFxAction_CloseMovie", "GFxAction_CloseMovie GFxUI.Default__GFxAction_CloseMovie")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsValidLevelSequenceObject;
		public @property static final ScriptFunction IsValidLevelSequenceObject() { mixin(MGF("mIsValidLevelSequenceObject", "Function GFxUI.GFxAction_CloseMovie.IsValidLevelSequenceObject")); }
	}
	@property final
	{
		@property final auto ref GFxMoviePlayer Movie() { mixin(MGPC("GFxMoviePlayer", 232)); }
		bool bUnload() { mixin(MGBPC(236, 0x1)); }
		bool bUnload(bool val) { mixin(MSBPC(236, 0x1)); }
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidLevelSequenceObject, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
