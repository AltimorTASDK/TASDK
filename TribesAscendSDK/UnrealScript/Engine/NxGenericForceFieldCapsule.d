module UnrealScript.Engine.NxGenericForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Engine.NxGenericForceField;

extern(C++) interface NxGenericForceFieldCapsule : NxGenericForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxGenericForceFieldCapsule")); }
	@property final auto ref
	{
		float CapsuleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
		float CapsuleHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
	}
}
