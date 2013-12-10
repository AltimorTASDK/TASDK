module UnrealScript.Engine.NxTornadoForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceField;

extern(C++) interface NxTornadoForceField : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxTornadoForceField")); }
	private static __gshared NxTornadoForceField mDefaultProperties;
	@property final static NxTornadoForceField DefaultProperties() { mixin(MGDPC("NxTornadoForceField", "NxTornadoForceField Engine.Default__NxTornadoForceField")); }
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
		bool BSpecialRadialForceMode() { mixin(MGBPC(576, 0x1)); }
		bool BSpecialRadialForceMode(bool val) { mixin(MSBPC(576, 0x1)); }
	}
}
