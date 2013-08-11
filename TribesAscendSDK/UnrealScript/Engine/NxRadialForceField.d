module UnrealScript.Engine.NxRadialForceField;

import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxRadialForceField : NxForceField
{
	public @property final auto ref UObject.Pointer LinearKernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref float ForceStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
}
