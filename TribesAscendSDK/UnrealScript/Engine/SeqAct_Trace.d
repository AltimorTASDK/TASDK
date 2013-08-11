module UnrealScript.Engine.SeqAct_Trace;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Trace : SequenceAction
{
	public @property final auto ref Vector HitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float Distance() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref UObject HitObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref Vector EndOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref Vector StartOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref Vector TraceExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
	public @property final bool bTraceWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bTraceWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bTraceActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bTraceActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26004], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
