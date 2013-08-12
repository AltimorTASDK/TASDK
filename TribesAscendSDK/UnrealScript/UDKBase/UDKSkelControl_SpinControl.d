module UnrealScript.UDKBase.UDKSkelControl_SpinControl;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_SpinControl : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_SpinControl")); }
	@property final auto ref
	{
		Vector Axis() { return *cast(Vector*)(cast(size_t)cast(void*)this + 240); }
		float DegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	}
}
