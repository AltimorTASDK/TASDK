module UnrealScript.Engine.NxGenericForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxGenericForceField;

extern(C++) interface NxGenericForceFieldCapsule : NxGenericForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NxGenericForceFieldCapsule")()); }
	private static __gshared NxGenericForceFieldCapsule mDefaultProperties;
	@property final static NxGenericForceFieldCapsule DefaultProperties() { mixin(MGDPC!(NxGenericForceFieldCapsule, "NxGenericForceFieldCapsule Engine.Default__NxGenericForceFieldCapsule")()); }
	@property final auto ref
	{
		float CapsuleRadius() { mixin(MGPC!("float", 704)()); }
		float CapsuleHeight() { mixin(MGPC!("float", 700)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
	}
}
