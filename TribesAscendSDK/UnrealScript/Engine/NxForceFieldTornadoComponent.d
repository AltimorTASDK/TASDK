module UnrealScript.Engine.NxForceFieldTornadoComponent;

import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Core.UObject;

extern(C++) interface NxForceFieldTornadoComponent : NxForceFieldComponent
{
public extern(D):
	@property final
	{
		auto ref
		{
			UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 612); }
			float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float HeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
			float ForceHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
			float EscapeVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			float LiftFalloffHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
			float ForceTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
			float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			float LiftStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float RotationalStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float RadialStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
		}
		bool BSpecialRadialForceMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x1) != 0; }
		bool BSpecialRadialForceMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x1; } return val; }
	}
}
