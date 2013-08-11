module UnrealScript.Engine.SeqCond_SwitchClass;

import ScriptClasses;
import UnrealScript.Engine.SeqCond_SwitchBase;

extern(C++) interface SeqCond_SwitchClass : SeqCond_SwitchBase
{
public extern(D):
	struct SwitchClassInfo
	{
		private ubyte __buffer__[9];
	public extern(D):
		@property final auto ref
		{
			ubyte bFallThru() { return *cast(ubyte*)(cast(size_t)&this + 8); }
			ScriptName ClassName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(SeqCond_SwitchClass.SwitchClassInfo) ClassArray() { return *cast(ScriptArray!(SeqCond_SwitchClass.SwitchClassInfo)*)(cast(size_t)cast(void*)this + 208); }
final:
	void VerifyDefaultCaseValue()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26052], cast(void*)0, cast(void*)0);
	}
	bool IsFallThruEnabled(int ValueIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26053], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InsertValueEntry(int InsertIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InsertIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26056], params.ptr, cast(void*)0);
	}
	void RemoveValueEntry(int RemoveIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RemoveIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26058], params.ptr, cast(void*)0);
	}
}
