module UnrealScript.Engine.SeqAct_ConsoleCommand;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ConsoleCommand : SequenceAction
{
	public @property final auto ref ScriptArray!(ScriptString) Commands() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptString Command() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	final void VersionUpdated(int OldVersion, int NewVersion)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OldVersion;
		*cast(int*)&params[4] = NewVersion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25645], params.ptr, cast(void*)0);
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25648], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
