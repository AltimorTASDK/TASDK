module UnrealScript.UDKBase.UDKSkelControl_Rotate;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_Rotate : SkelControlSingleBone
{
	public @property final auto ref Rotator DesiredBoneRotationRate() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref Rotator DesiredBoneRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 236); }
}
