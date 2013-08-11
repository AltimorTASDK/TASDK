module UnrealScript.TribesGame.TrSkelControlFootPlacement_CCD;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControl_CCD_IK;

extern(C++) interface TrSkelControlFootPlacement_CCD : SkelControl_CCD_IK
{
	public @property final auto ref float FootAdjustHeightLastTick() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float OffContactFootAdjustInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float OnContactFootAdjustInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref Vector FootUpDirLastTick() { return *cast(Vector*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float FootOrientInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float MaxFootOrientAdjust() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float MaxDownAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float MaxUpAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final bool bFootOnGroundLastTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x8) != 0; }
	public @property final bool bFootOnGroundLastTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x8; } return val; }
	public @property final bool bOnlyEnableForUpAdjustment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x4) != 0; }
	public @property final bool bOnlyEnableForUpAdjustment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x4; } return val; }
	public @property final bool bOrientFootToGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x2) != 0; }
	public @property final bool bOrientFootToGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x2; } return val; }
	public @property final bool bInvertFootUpAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
	public @property final bool bInvertFootUpAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	public @property final auto ref Rotator FootRotOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref UObject.EAxis FootUpAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float FootOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
}
