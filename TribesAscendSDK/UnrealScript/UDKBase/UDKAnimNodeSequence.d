module UnrealScript.UDKBase.UDKAnimNodeSequence;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface UDKAnimNodeSequence : AnimNodeSequence
{
	public @property final auto ref ScriptArray!(ScriptName) SeqStack() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 324); }
	public @property final bool bLoopLastSequence() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x2) != 0; }
	public @property final bool bLoopLastSequence(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x2; } return val; }
	public @property final bool bAutoStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x1) != 0; }
	public @property final bool bAutoStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x1; } return val; }
	final void PlayAnimation(ScriptName Sequence, float SeqRate, bool bSeqLoop)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Sequence;
		*cast(float*)&params[8] = SeqRate;
		*cast(bool*)&params[12] = bSeqLoop;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34610], params.ptr, cast(void*)0);
	}
	final void PlayAnimationSet(ScriptArray!(ScriptName) Sequences, float SeqRate, bool bLoopLast)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = Sequences;
		*cast(float*)&params[12] = SeqRate;
		*cast(bool*)&params[16] = bLoopLast;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34614], params.ptr, cast(void*)0);
	}
	final void OnInit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34619], cast(void*)0, cast(void*)0);
	}
}
