module UnrealScript.Engine.FluidInfluenceComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.FluidSurfaceActor;

extern(C++) interface FluidInfluenceComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FluidInfluenceComponent")()); }
	private static __gshared FluidInfluenceComponent mDefaultProperties;
	@property final static FluidInfluenceComponent DefaultProperties() { mixin(MGDPC!(FluidInfluenceComponent, "FluidInfluenceComponent Engine.Default__FluidInfluenceComponent")()); }
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
			FluidSurfaceActor CurrentFluidActor() { mixin(MGPC!(FluidSurfaceActor, 580)()); }
			float CurrentTimer() { mixin(MGPC!(float, 576)()); }
			float CurrentAngle() { mixin(MGPC!(float, 572)()); }
			float SphereStrength() { mixin(MGPC!(float, 568)()); }
			float SphereInnerRadius() { mixin(MGPC!(float, 564)()); }
			float SphereOuterRadius() { mixin(MGPC!(float, 560)()); }
			float FlowFrequency() { mixin(MGPC!(float, 556)()); }
			float FlowStrength() { mixin(MGPC!(float, 552)()); }
			float FlowWaveRadius() { mixin(MGPC!(float, 548)()); }
			float FlowSideMotionRadius() { mixin(MGPC!(float, 544)()); }
			int FlowNumRipples() { mixin(MGPC!(int, 540)()); }
			float FlowSpeed() { mixin(MGPC!(float, 536)()); }
			float RaindropRate() { mixin(MGPC!(float, 532)()); }
			float RaindropStrength() { mixin(MGPC!(float, 528)()); }
			float RaindropRadius() { mixin(MGPC!(float, 524)()); }
			float RaindropAreaRadius() { mixin(MGPC!(float, 520)()); }
			float WaveRadius() { mixin(MGPC!(float, 516)()); }
			float WavePhase() { mixin(MGPC!(float, 512)()); }
			float WaveFrequency() { mixin(MGPC!(float, 508)()); }
			float WaveStrength() { mixin(MGPC!(float, 504)()); }
			float MaxDistance() { mixin(MGPC!(float, 500)()); }
			FluidInfluenceComponent.EInfluenceType InfluenceType() { mixin(MGPC!(FluidInfluenceComponent.EInfluenceType, 496)()); }
			FluidSurfaceActor FluidActor() { mixin(MGPC!(FluidSurfaceActor, 492)()); }
		}
		bool bIsToggleTriggered() { mixin(MGBPC!(488, 0x4)()); }
		bool bIsToggleTriggered(bool val) { mixin(MSBPC!(488, 0x4)()); }
		bool RaindropFillEntireFluid() { mixin(MGBPC!(488, 0x2)()); }
		bool RaindropFillEntireFluid(bool val) { mixin(MSBPC!(488, 0x2)()); }
		bool bActive() { mixin(MGBPC!(488, 0x1)()); }
		bool bActive(bool val) { mixin(MSBPC!(488, 0x1)()); }
	}
}
