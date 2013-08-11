module UnrealScript.Engine.SkelControlTrail;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlTrail : SkelControlBase
{
	public @property final auto ref ScriptArray!(Vector) TrailBoneLocations() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref UObject.Matrix OldLocalToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float ThisTimstep() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref Vector FakeVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref float StretchLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float TrailRelaxation() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final bool bHadValidStrength() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x8) != 0; }
	public @property final bool bHadValidStrength(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x8; } return val; }
	public @property final bool bActorSpaceFakeVel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x4) != 0; }
	public @property final bool bActorSpaceFakeVel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x4; } return val; }
	public @property final bool bLimitStretch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x2) != 0; }
	public @property final bool bLimitStretch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x2; } return val; }
	public @property final bool bInvertChainBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x1) != 0; }
	public @property final bool bInvertChainBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x1; } return val; }
	public @property final auto ref UObject.EAxis ChainBoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref int ChainLength() { return *cast(int*)(cast(size_t)cast(void*)this + 188); }
}
