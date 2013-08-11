module UnrealScript.Engine.SkelControlWheel;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface SkelControlWheel : SkelControlSingleBone
{
	public @property final bool bInvertWheelSteering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x2) != 0; }
	public @property final bool bInvertWheelSteering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x2; } return val; }
	public @property final bool bInvertWheelRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
	public @property final bool bInvertWheelRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	public @property final auto ref float WheelSteering() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref UObject.EAxis WheelSteeringAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 249); }
	public @property final auto ref UObject.EAxis WheelRollAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float WheelRoll() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float WheelMaxRenderDisplacement() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float WheelDisplacement() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
}
