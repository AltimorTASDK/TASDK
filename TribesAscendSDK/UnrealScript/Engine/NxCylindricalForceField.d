module UnrealScript.Engine.NxCylindricalForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;

extern(C++) interface NxCylindricalForceField : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxCylindricalForceField")); }
	private static __gshared NxCylindricalForceField mDefaultProperties;
	@property final static NxCylindricalForceField DefaultProperties() { mixin(MGDPC("NxCylindricalForceField", "NxCylindricalForceField Engine.Default__NxCylindricalForceField")); }
	@property final
	{
		auto ref
		{
			Pointer Kernel() { mixin(MGPC("Pointer", 580)); }
			float HeightOffset() { mixin(MGPC("float", 572)); }
			float ForceHeight() { mixin(MGPC("float", 568)); }
			float EscapeVelocity() { mixin(MGPC("float", 564)); }
			float LiftFalloffHeight() { mixin(MGPC("float", 560)); }
			float ForceTopRadius() { mixin(MGPC("float", 556)); }
			float ForceRadius() { mixin(MGPC("float", 552)); }
			float LiftStrength() { mixin(MGPC("float", 548)); }
			float RotationalStrength() { mixin(MGPC("float", 544)); }
			float RadialStrength() { mixin(MGPC("float", 540)); }
		}
		bool UseSpecialRadialForce() { mixin(MGBPC(576, 0x1)); }
		bool UseSpecialRadialForce(bool val) { mixin(MSBPC(576, 0x1)); }
	}
}
