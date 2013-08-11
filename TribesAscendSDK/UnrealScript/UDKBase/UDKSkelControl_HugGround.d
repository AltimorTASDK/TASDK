module UnrealScript.UDKBase.UDKSkelControl_HugGround;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HugGround : SkelControlSingleBone
{
	public @property final auto ref float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float MaxTranslationPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float ZDistFromParentBone() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float XYDistFromParentBone() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final bool bOppositeFromParent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
	public @property final bool bOppositeFromParent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	public @property final auto ref ScriptName ParentBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float MaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float DesiredGroundDist() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
}
