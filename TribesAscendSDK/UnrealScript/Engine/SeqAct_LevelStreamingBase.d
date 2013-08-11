module UnrealScript.Engine.SeqAct_LevelStreamingBase;

import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_LevelStreamingBase : SeqAct_Latent
{
public extern(D):
	@property final
	{
		bool bShouldBlockOnLoad() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
		bool bShouldBlockOnLoad(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
		bool bMakeVisibleAfterLoad() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bMakeVisibleAfterLoad(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
}
