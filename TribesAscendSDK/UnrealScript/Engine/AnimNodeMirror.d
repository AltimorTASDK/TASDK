module UnrealScript.Engine.AnimNodeMirror;

import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeMirror : AnimNodeBlendBase
{
	public @property final bool bEnableMirroring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
	public @property final bool bEnableMirroring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
}
