module UnrealScript.UDKBase.UDKSkelControl_VehicleFlap;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_VehicleFlap : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_VehicleFlap")); }
	@property final auto ref
	{
		ScriptName LeftFlapControl() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 260); }
		ScriptName RightFlapControl() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 252); }
		float MaxPitchChange() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float MaxPitchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		float OldZPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float maxPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	}
}
