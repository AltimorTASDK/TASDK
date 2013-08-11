module UnrealScript.Engine.SeqAct_Destroy;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Destroy : SequenceAction
{
public extern(D):
	@property final
	{
		@property final auto ref ScriptArray!(ScriptClass) IgnoreBasedClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 236); }
		bool bDestroyBasedActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bDestroyBasedActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
