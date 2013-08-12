module UnrealScript.Engine.NxRadialCustomForceField;

import ScriptClasses;
import UnrealScript.Engine.NxRadialForceField;
import UnrealScript.Core.UObject;

extern(C++) interface NxRadialCustomForceField : NxRadialForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxRadialCustomForceField")); }
	private static __gshared NxRadialCustomForceField mDefaultProperties;
	@property final static NxRadialCustomForceField DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxRadialCustomForceField)("NxRadialCustomForceField Engine.Default__NxRadialCustomForceField")); }
	@property final auto ref
	{
		UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 564); }
		float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	}
}
