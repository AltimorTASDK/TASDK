module UnrealScript.Engine.NxForceFieldRadialComponent;

import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxForceFieldRadialComponent : NxForceFieldComponent
{
public extern(D):
	@property final auto ref
	{
		UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 584); }
		PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 580); }
		float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
		float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
		float ForceStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	}
}
