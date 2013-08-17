module UnrealScript.GFxUI.GFxAction_SetVariable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_SetVariable : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.GFxAction_SetVariable")); }
	private static __gshared GFxAction_SetVariable mDefaultProperties;
	@property final static GFxAction_SetVariable DefaultProperties() { mixin(MGDPC("GFxAction_SetVariable", "GFxAction_SetVariable GFxUI.Default__GFxAction_SetVariable")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsValidLevelSequenceObject;
		public @property static final ScriptFunction IsValidLevelSequenceObject() { mixin(MGF("mIsValidLevelSequenceObject", "Function GFxUI.GFxAction_SetVariable.IsValidLevelSequenceObject")); }
	}
	@property final auto ref
	{
		ScriptString Variable() { mixin(MGPC("ScriptString", 236)); }
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
