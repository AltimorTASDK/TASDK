module UnrealScript.Engine.NxRadialForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxRadialForceField : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxRadialForceField")); }
	private static __gshared NxRadialForceField mDefaultProperties;
	@property final static NxRadialForceField DefaultProperties() { mixin(MGDPC("NxRadialForceField", "NxRadialForceField Engine.Default__NxRadialForceField")); }
	@property final auto ref
	{
		Pointer LinearKernel() { mixin(MGPC("Pointer", 556)); }
		PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { mixin(MGPC("PrimitiveComponent.ERadialImpulseFalloff", 552)); }
		float ForceRadius() { mixin(MGPC("float", 548)); }
		float ForceStrength() { mixin(MGPC("float", 544)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
	}
}
