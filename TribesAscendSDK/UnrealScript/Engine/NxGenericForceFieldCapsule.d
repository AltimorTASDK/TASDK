module UnrealScript.Engine.NxGenericForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Engine.NxGenericForceField;

extern(C++) interface NxGenericForceFieldCapsule : NxGenericForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxGenericForceFieldCapsule")); }
	private static __gshared NxGenericForceFieldCapsule mDefaultProperties;
	@property final static NxGenericForceFieldCapsule DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxGenericForceFieldCapsule)("NxGenericForceFieldCapsule Engine.Default__NxGenericForceFieldCapsule")); }
	@property final auto ref
	{
		float CapsuleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
		float CapsuleHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
	}
}
