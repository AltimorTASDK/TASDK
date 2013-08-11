module UnrealScript.Engine.NxForceFieldTornado;

import ScriptClasses;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldTornado : NxForceField
{
	public @property final auto ref UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final bool BSpecialRadialForceMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 584) & 0x1) != 0; }
	public @property final bool BSpecialRadialForceMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 584) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 584) &= ~0x1; } return val; }
	public @property final auto ref float HeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float ForceHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float EscapeVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float LiftFalloffHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref float ForceTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float LiftStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float RotationalStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float RadialStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref ForceFieldShape Shape() { return *cast(ForceFieldShape*)(cast(size_t)cast(void*)this + 540); }
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21252], cast(void*)0, cast(void*)0);
	}
}
