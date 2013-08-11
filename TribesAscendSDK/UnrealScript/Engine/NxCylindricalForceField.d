module UnrealScript.Engine.NxCylindricalForceField;

import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;

extern(C++) interface NxCylindricalForceField : NxForceField
{
public extern(D):
	@property final
	{
		auto ref
		{
			UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 580); }
			float HeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float ForceHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float EscapeVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			float LiftFalloffHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float ForceTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float LiftStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			float RotationalStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			float RadialStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
		}
		bool UseSpecialRadialForce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 576) & 0x1) != 0; }
		bool UseSpecialRadialForce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 576) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 576) &= ~0x1; } return val; }
	}
}
