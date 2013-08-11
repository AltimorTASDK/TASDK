module UnrealScript.Engine.SeqAct_ActivateRemoteEvent;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ActivateRemoteEvent : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
			Actor Instigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25536], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
