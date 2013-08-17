module UnrealScript.Engine.NxTornadoAngularForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxTornadoAngularForceField;

extern(C++) interface NxTornadoAngularForceFieldCapsule : NxTornadoAngularForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxTornadoAngularForceFieldCapsule")); }
	private static __gshared NxTornadoAngularForceFieldCapsule mDefaultProperties;
	@property final static NxTornadoAngularForceFieldCapsule DefaultProperties() { mixin(MGDPC("NxTornadoAngularForceFieldCapsule", "NxTornadoAngularForceFieldCapsule Engine.Default__NxTornadoAngularForceFieldCapsule")); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
}
