module UnrealScript.Engine.SeqAct_RangeSwitch;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_RangeSwitch : SequenceAction
{
	struct SwitchRange
	{
		public @property final auto ref int Max() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Max[4];
		public @property final auto ref int Min() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Min[4];
	}
	public @property final auto ref ScriptArray!(SeqAct_RangeSwitch.SwitchRange) Ranges() { return *cast(ScriptArray!(SeqAct_RangeSwitch.SwitchRange)*)(cast(size_t)cast(void*)this + 232); }
}
