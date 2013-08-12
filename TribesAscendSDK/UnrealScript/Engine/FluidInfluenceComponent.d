module UnrealScript.Engine.FluidInfluenceComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.FluidSurfaceActor;

extern(C++) interface FluidInfluenceComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FluidInfluenceComponent")); }
	enum EInfluenceType : ubyte
	{
		Fluid_Flow = 0,
		Fluid_Raindrops = 1,
		Fluid_Wave = 2,
		Fluid_Sphere = 3,
		Fluid_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			FluidSurfaceActor CurrentFluidActor() { return *cast(FluidSurfaceActor*)(cast(size_t)cast(void*)this + 580); }
			float CurrentTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float CurrentAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float SphereStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float SphereInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			float SphereOuterRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float FlowFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float FlowStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float FlowWaveRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			float FlowSideMotionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			int FlowNumRipples() { return *cast(int*)(cast(size_t)cast(void*)this + 540); }
			float FlowSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
			float RaindropRate() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
			float RaindropStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			float RaindropRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float RaindropAreaRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			float WaveRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			float WavePhase() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float WaveFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float WaveStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float MaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			FluidInfluenceComponent.EInfluenceType InfluenceType() { return *cast(FluidInfluenceComponent.EInfluenceType*)(cast(size_t)cast(void*)this + 496); }
			FluidSurfaceActor FluidActor() { return *cast(FluidSurfaceActor*)(cast(size_t)cast(void*)this + 492); }
		}
		bool bIsToggleTriggered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4) != 0; }
		bool bIsToggleTriggered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4; } return val; }
		bool RaindropFillEntireFluid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2) != 0; }
		bool RaindropFillEntireFluid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2; } return val; }
		bool bActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	}
}
