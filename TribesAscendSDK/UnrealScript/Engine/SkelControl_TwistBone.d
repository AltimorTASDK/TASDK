module UnrealScript.Engine.SkelControl_TwistBone;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_TwistBone : SkelControlBase
{
public extern(D):
	@property final auto ref
	{
		float TwistAngleScale() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
		ScriptName SourceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 188); }
	}
}
