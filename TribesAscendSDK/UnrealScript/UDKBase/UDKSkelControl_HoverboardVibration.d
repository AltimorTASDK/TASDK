module UnrealScript.UDKBase.UDKSkelControl_HoverboardVibration;

import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardVibration : SkelControlSingleBone
{
	public @property final auto ref float VibInput() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float VibMaxAmplitude() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float VibTurnAmpScale() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float VibSpeedAmpScale() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float VibFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
}
