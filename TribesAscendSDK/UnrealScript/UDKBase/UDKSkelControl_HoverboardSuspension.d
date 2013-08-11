module UnrealScript.UDKBase.UDKSkelControl_HoverboardSuspension;

import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardSuspension : SkelControlSingleBone
{
	public @property final auto ref float CurrentRot() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float MaxRotRate() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float MaxRot() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float RotScale() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float MinTrans() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float MaxTrans() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float TransOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float TransScale() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float TransIgnore() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
}
