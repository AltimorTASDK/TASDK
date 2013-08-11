module UnrealScript.UDKBase.UDKSkelControl_HoverboardVibration;

import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardVibration : SkelControlSingleBone
{
public extern(D):
	@property final auto ref
	{
		float VibInput() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float VibMaxAmplitude() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float VibTurnAmpScale() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		float VibSpeedAmpScale() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float VibFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	}
}
