module UnrealScript.GFxUI.GFxAction_GetVariable;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_GetVariable : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxAction_GetVariable")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsValidLevelSequenceObject;
		public @property static final ScriptFunction IsValidLevelSequenceObject() { return mIsValidLevelSequenceObject ? mIsValidLevelSequenceObject : (mIsValidLevelSequenceObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxAction_GetVariable.IsValidLevelSequenceObject")); }
	}
	@property final auto ref
	{
		ScriptString Variable() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
		GFxMoviePlayer Movie() { return *cast(GFxMoviePlayer*)(cast(size_t)cast(void*)this + 232); }
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidLevelSequenceObject, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
