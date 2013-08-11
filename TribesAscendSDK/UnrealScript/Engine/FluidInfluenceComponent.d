module UnrealScript.Engine.FluidInfluenceComponent;

import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.FluidSurfaceActor;

extern(C++) interface FluidInfluenceComponent : PrimitiveComponent
{
	enum EInfluenceType : ubyte
	{
		Fluid_Flow = 0,
		Fluid_Raindrops = 1,
		Fluid_Wave = 2,
		Fluid_Sphere = 3,
		Fluid_MAX = 4,
	}
	public @property final auto ref FluidSurfaceActor CurrentFluidActor() { return *cast(FluidSurfaceActor*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float CurrentTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float CurrentAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float SphereStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref float SphereInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float SphereOuterRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float FlowFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float FlowStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float FlowWaveRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref float FlowSideMotionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref int FlowNumRipples() { return *cast(int*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref float FlowSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref float RaindropRate() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref float RaindropStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref float RaindropRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref float RaindropAreaRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref float WaveRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float WavePhase() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float WaveFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float WaveStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float MaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref FluidInfluenceComponent.EInfluenceType InfluenceType() { return *cast(FluidInfluenceComponent.EInfluenceType*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref FluidSurfaceActor FluidActor() { return *cast(FluidSurfaceActor*)(cast(size_t)cast(void*)this + 492); }
	public @property final bool bIsToggleTriggered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4) != 0; }
	public @property final bool bIsToggleTriggered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4; } return val; }
	public @property final bool RaindropFillEntireFluid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2) != 0; }
	public @property final bool RaindropFillEntireFluid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2; } return val; }
	public @property final bool bActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
	public @property final bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
}
