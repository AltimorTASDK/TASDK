module UnrealScript.Engine.NxTornadoAngularForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Engine.NxTornadoAngularForceField;

extern(C++) interface NxTornadoAngularForceFieldCapsule : NxTornadoAngularForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxTornadoAngularForceFieldCapsule")); }
}
