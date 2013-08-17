module UnrealScript.Engine.NxTornadoForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxTornadoForceField;

extern(C++) interface NxTornadoForceFieldCapsule : NxTornadoForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NxTornadoForceFieldCapsule")()); }
	private static __gshared NxTornadoForceFieldCapsule mDefaultProperties;
	@property final static NxTornadoForceFieldCapsule DefaultProperties() { mixin(MGDPC!(NxTornadoForceFieldCapsule, "NxTornadoForceFieldCapsule Engine.Default__NxTornadoForceFieldCapsule")()); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
}
