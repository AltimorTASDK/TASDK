module UnrealScript.Engine.InterpTrackInstFaceFX;

import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstFaceFX : InterpTrackInst
{
public extern(D):
	@property final
	{
		@property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		bool bFirstUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bFirstUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}
