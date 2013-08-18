module UnrealScript.Engine.NxForceFieldCylindricalComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Core.UObject;

extern(C++) interface NxForceFieldCylindricalComponent : NxForceFieldComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxForceFieldCylindricalComponent")); }
	private static __gshared NxForceFieldCylindricalComponent mDefaultProperties;
	@property final static NxForceFieldCylindricalComponent DefaultProperties() { mixin(MGDPC("NxForceFieldCylindricalComponent", "NxForceFieldCylindricalComponent Engine.Default__NxForceFieldCylindricalComponent")); }
	@property final
	{
		auto ref
		{
			Pointer Kernel() { mixin(MGPC("Pointer", 608)); }
			float HeightOffset() { mixin(MGPC("float", 600)); }
			float ForceHeight() { mixin(MGPC("float", 596)); }
			float EscapeVelocity() { mixin(MGPC("float", 592)); }
			float LiftFalloffHeight() { mixin(MGPC("float", 588)); }
			float ForceTopRadius() { mixin(MGPC("float", 584)); }
			float ForceRadius() { mixin(MGPC("float", 580)); }
			float LiftStrength() { mixin(MGPC("float", 576)); }
			float RotationalStrength() { mixin(MGPC("float", 572)); }
			float RadialStrength() { mixin(MGPC("float", 568)); }
		}
		bool UseSpecialRadialForce() { mixin(MGBPC(604, 0x1)); }
		bool UseSpecialRadialForce(bool val) { mixin(MSBPC(604, 0x1)); }
	}
}
