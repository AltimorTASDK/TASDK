module UnrealScript.Engine.SeqAct_ConvertToString;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ConvertToString : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			int NumberOfInputs() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
			ScriptString VarSeparator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bIncludeVarComment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bIncludeVarComment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25654], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
