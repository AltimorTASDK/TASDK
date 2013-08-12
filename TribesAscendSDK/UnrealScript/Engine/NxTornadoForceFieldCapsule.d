module UnrealScript.Engine.NxTornadoForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Engine.NxTornadoForceField;

extern(C++) interface NxTornadoForceFieldCapsule : NxTornadoForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxTornadoForceFieldCapsule")); }
}
