module UnrealScript.Engine.NxForceFieldTornadoComponent;

import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Core.UObject;

extern(C++) interface NxForceFieldTornadoComponent : NxForceFieldComponent
{
	public @property final auto ref UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final bool BSpecialRadialForceMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 604) & 0x1) != 0; }
	public @property final bool BSpecialRadialForceMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 604) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 604) &= ~0x1; } return val; }
	public @property final auto ref float HeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref float ForceHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref float EscapeVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float LiftFalloffHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref float ForceTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float LiftStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float RotationalStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float RadialStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
}
