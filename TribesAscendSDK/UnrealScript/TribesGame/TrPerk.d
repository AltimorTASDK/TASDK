module UnrealScript.TribesGame.TrPerk;

import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrPerk : TrDevice
{
public extern(D):
	@property final
	{
		bool bFree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2148) & 0x1) != 0; }
		bool bFree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2148) &= ~0x1; } return val; }
	}
}
