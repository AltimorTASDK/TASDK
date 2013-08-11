module UnrealScript.UDKBase.UDKSkelControl_VehicleFlap;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_VehicleFlap : SkelControlSingleBone
{
	public @property final auto ref ScriptName LeftFlapControl() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptName RightFlapControl() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float MaxPitchChange() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float MaxPitchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float OldZPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float maxPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
}
