module UnrealScript.GFxUI.GFxAction_CloseMovie;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_CloseMovie : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxAction_CloseMovie")); }
	private static __gshared GFxAction_CloseMovie mDefaultProperties;
	@property final static GFxAction_CloseMovie DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxAction_CloseMovie)("GFxAction_CloseMovie GFxUI.Default__GFxAction_CloseMovie")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsValidLevelSequenceObject;
		public @property static final ScriptFunction IsValidLevelSequenceObject() { return mIsValidLevelSequenceObject ? mIsValidLevelSequenceObject : (mIsValidLevelSequenceObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxAction_CloseMovie.IsValidLevelSequenceObject")); }
	}
	@property final
	{
		@property final auto ref GFxMoviePlayer Movie() { return *cast(GFxMoviePlayer*)(cast(size_t)cast(void*)this + 232); }
		bool bUnload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bUnload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidLevelSequenceObject, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
