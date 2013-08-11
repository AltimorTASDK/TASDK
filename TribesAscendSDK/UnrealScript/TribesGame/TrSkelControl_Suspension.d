module UnrealScript.TribesGame.TrSkelControl_Suspension;

import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrSkelControl_Suspension : SkelControlSingleBone
{
	public @property final auto ref int WheelIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float CurrentRot() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float MaxRotRate() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float MinRot() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float MaxRot() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float RotScale() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float RotIgnore() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float MinTrans() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float MaxTrans() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float TransOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float TransScale() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float TransIgnore() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final bool m_bApplyTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
	public @property final bool m_bApplyTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
	public @property final bool m_bApplyRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool m_bApplyRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
}
