module UnrealScript.Engine.NxRadialCustomForceField;

import ScriptClasses;
import UnrealScript.Engine.NxRadialForceField;
import UnrealScript.Core.UObject;

extern(C++) interface NxRadialCustomForceField : NxRadialForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxRadialCustomForceField")); }
	@property final auto ref
	{
		UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 564); }
		float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	}
}
