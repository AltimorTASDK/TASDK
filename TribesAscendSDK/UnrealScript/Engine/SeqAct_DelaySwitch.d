module UnrealScript.Engine.SeqAct_DelaySwitch;

import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_DelaySwitch : SeqAct_Latent
{
	public @property final auto ref float NextLinkTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float SwitchDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref int CurrentIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref int LinkCount() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
}
