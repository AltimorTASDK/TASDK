module UnrealScript.GFxUI.GFxAction_Invoke;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface GFxAction_Invoke : SequenceAction
{
	public @property final auto ref ScriptArray!(GFxMoviePlayer.ASValue) Arguments() { return *cast(ScriptArray!(GFxMoviePlayer.ASValue)*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref ScriptString MethodName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref GFxMoviePlayer Movie() { return *cast(GFxMoviePlayer*)(cast(size_t)cast(void*)this + 232); }
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29946], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
