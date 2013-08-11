module UnrealScript.Engine.SeqCond_CompareBool;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareBool : SequenceCondition
{
public extern(D):
	@property final
	{
		bool bResult() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x1) != 0; }
		bool bResult(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26014], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
