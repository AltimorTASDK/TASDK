module UnrealScript.GFxUI.GFxAction_GetVariable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_GetVariable : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GFxUI.GFxAction_GetVariable")()); }
	private static __gshared GFxAction_GetVariable mDefaultProperties;
	@property final static GFxAction_GetVariable DefaultProperties() { mixin(MGDPC!(GFxAction_GetVariable, "GFxAction_GetVariable GFxUI.Default__GFxAction_GetVariable")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsValidLevelSequenceObject;
		public @property static final ScriptFunction IsValidLevelSequenceObject() { mixin(MGF!("mIsValidLevelSequenceObject", "Function GFxUI.GFxAction_GetVariable.IsValidLevelSequenceObject")()); }
	}
	@property final auto ref
	{
		ScriptString Variable() { mixin(MGPC!(ScriptString, 236)()); }
		GFxMoviePlayer Movie() { mixin(MGPC!(GFxMoviePlayer, 232)()); }
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidLevelSequenceObject, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
