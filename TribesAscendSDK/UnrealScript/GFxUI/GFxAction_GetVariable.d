module UnrealScript.GFxUI.GFxAction_GetVariable;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_GetVariable : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		ScriptString Variable() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
		GFxMoviePlayer Movie() { return *cast(GFxMoviePlayer*)(cast(size_t)cast(void*)this + 232); }
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29654], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
