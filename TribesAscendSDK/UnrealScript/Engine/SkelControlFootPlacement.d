module UnrealScript.Engine.SkelControlFootPlacement;

import ScriptClasses;
import UnrealScript.Engine.SkelControlLimb;
import UnrealScript.Core.UObject;

extern(C++) interface SkelControlFootPlacement : SkelControlLimb
{
	public @property final auto ref float MaxFootOrientAdjust() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float MaxDownAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float MaxUpAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final bool bOnlyEnableForUpAdjustment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x4) != 0; }
	public @property final bool bOnlyEnableForUpAdjustment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x4; } return val; }
	public @property final bool bOrientFootToGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x2) != 0; }
	public @property final bool bOrientFootToGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x2; } return val; }
	public @property final bool bInvertFootUpAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
	public @property final bool bInvertFootUpAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
	public @property final auto ref Rotator FootRotOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref UObject.EAxis FootUpAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float FootOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
}
