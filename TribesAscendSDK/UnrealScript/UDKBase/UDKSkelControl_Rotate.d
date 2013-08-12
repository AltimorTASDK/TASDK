module UnrealScript.UDKBase.UDKSkelControl_Rotate;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_Rotate : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_Rotate")); }
	@property final auto ref
	{
		Rotator DesiredBoneRotationRate() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 248); }
		Rotator DesiredBoneRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 236); }
	}
}
