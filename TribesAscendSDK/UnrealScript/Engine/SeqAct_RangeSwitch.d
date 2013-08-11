module UnrealScript.Engine.SeqAct_RangeSwitch;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_RangeSwitch : SequenceAction
{
public extern(D):
	struct SwitchRange
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			int Max() { return *cast(int*)(cast(size_t)&this + 4); }
			int Min() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(SeqAct_RangeSwitch.SwitchRange) Ranges() { return *cast(ScriptArray!(SeqAct_RangeSwitch.SwitchRange)*)(cast(size_t)cast(void*)this + 232); }
}
