module UnrealScript.Engine.SeqAct_ModifyCover;

import ScriptClasses;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ModifyCover : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(int) Slots() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 232); }
			CoverLink.ECoverType ManualCoverType() { return *cast(CoverLink.ECoverType*)(cast(size_t)cast(void*)this + 244); }
		}
		bool bManualAdjustPlayersOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bManualAdjustPlayersOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
}
