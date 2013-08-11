module UnrealScript.Engine.SkelControl_TwistBone;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_TwistBone : SkelControlBase
{
	public @property final auto ref float TwistAngleScale() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ScriptName SourceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 188); }
}
