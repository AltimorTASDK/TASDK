module UnrealScript.Engine.NxTornadoAngularForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Engine.NxTornadoAngularForceField;

extern(C++) interface NxTornadoAngularForceFieldCapsule : NxTornadoAngularForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxTornadoAngularForceFieldCapsule")); }
	private static __gshared NxTornadoAngularForceFieldCapsule mDefaultProperties;
	@property final static NxTornadoAngularForceFieldCapsule DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxTornadoAngularForceFieldCapsule)("NxTornadoAngularForceFieldCapsule Engine.Default__NxTornadoAngularForceFieldCapsule")); }
}
