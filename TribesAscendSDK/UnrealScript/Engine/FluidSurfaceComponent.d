module UnrealScript.Engine.FluidSurfaceComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ShadowMap2D;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface FluidSurfaceComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FluidSurfaceComponent")()); }
	private static __gshared FluidSurfaceComponent mDefaultProperties;
	@property final static FluidSurfaceComponent DefaultProperties() { mixin(MGDPC!(FluidSurfaceComponent, "FluidSurfaceComponent Engine.Default__FluidSurfaceComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApplyForce;
			ScriptFunction mSetDetailPosition;
			ScriptFunction mSetSimulationPosition;
		}
		public @property static final
		{
			ScriptFunction ApplyForce() { mixin(MGF!("mApplyForce", "Function Engine.FluidSurfaceComponent.ApplyForce")()); }
			ScriptFunction SetDetailPosition() { mixin(MGF!("mSetDetailPosition", "Function Engine.FluidSurfaceComponent.SetDetailPosition")()); }
			ScriptFunction SetSimulationPosition() { mixin(MGF!("mSetSimulationPosition", "Function Engine.FluidSurfaceComponent.SetSimulationPosition")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float ForceImpact() { mixin(MGPC!(float, 568)()); }
			ScriptArray!(ubyte) ClampMap() { mixin(MGPC!(ScriptArray!(ubyte), 692)()); }
			ScriptArray!(ShadowMap2D) ShadowMaps() { mixin(MGPC!(ScriptArray!(ShadowMap2D), 704)()); }
			UObject.Pointer FluidSimulation() { mixin(MGPC!(UObject.Pointer, 720)()); }
			EngineTypes.LightMapRef LightMap() { mixin(MGPC!(EngineTypes.LightMapRef, 716)()); }
			Vector EditorViewPosition() { mixin(MGPC!(Vector, 680)()); }
			Vector DetailPosition() { mixin(MGPC!(Vector, 668)()); }
			Vector SimulationPosition() { mixin(MGPC!(Vector, 656)()); }
			float ViewDistance() { mixin(MGPC!(float, 652)()); }
			float DeactivationTimer() { mixin(MGPC!(float, 648)()); }
			float TestRippleAngle() { mixin(MGPC!(float, 644)()); }
			float TestRippleTime() { mixin(MGPC!(float, 640)()); }
			float FluidHeight() { mixin(MGPC!(float, 636)()); }
			float FluidWidth() { mixin(MGPC!(float, 632)()); }
			float TestRippleRadius() { mixin(MGPC!(float, 628)()); }
			float TestRippleFrequency() { mixin(MGPC!(float, 624)()); }
			float TestRippleSpeed() { mixin(MGPC!(float, 620)()); }
			float NormalLength() { mixin(MGPC!(float, 616)()); }
			float DetailUpdateRate() { mixin(MGPC!(float, 612)()); }
			float DetailHeightScale() { mixin(MGPC!(float, 608)()); }
			float DetailTransfer() { mixin(MGPC!(float, 604)()); }
			float DetailTravelSpeed() { mixin(MGPC!(float, 600)()); }
			float DetailDamping() { mixin(MGPC!(float, 596)()); }
			float DetailSize() { mixin(MGPC!(float, 592)()); }
			int DetailResolution() { mixin(MGPC!(int, 588)()); }
			float DeactivationDistance() { mixin(MGPC!(float, 584)()); }
			Actor TargetDetail() { mixin(MGPC!(Actor, 580)()); }
			float LightingContrast() { mixin(MGPC!(float, 576)()); }
			float ForceContinuous() { mixin(MGPC!(float, 572)()); }
			float FluidUpdateRate() { mixin(MGPC!(float, 564)()); }
			float FluidHeightScale() { mixin(MGPC!(float, 560)()); }
			float FluidTravelSpeed() { mixin(MGPC!(float, 556)()); }
			float FluidDamping() { mixin(MGPC!(float, 552)()); }
			float GPUTessellationFactor() { mixin(MGPC!(float, 548)()); }
			Actor TargetSimulation() { mixin(MGPC!(Actor, 544)()); }
			float GridSpacingLowRes() { mixin(MGPC!(float, 540)()); }
			float GridSpacing() { mixin(MGPC!(float, 536)()); }
			int SimulationQuadsY() { mixin(MGPC!(int, 532)()); }
			int SimulationQuadsX() { mixin(MGPC!(int, 528)()); }
			EngineTypes.LightmassPrimitiveSettings LightmassSettings() { mixin(MGPC!(EngineTypes.LightmassPrimitiveSettings, 496)()); }
			int LightMapResolution() { mixin(MGPC!(int, 492)()); }
			MaterialInterface FluidMaterial() { mixin(MGPC!(MaterialInterface, 488)()); }
		}
		bool bTestRippleCenterOnDetail() { mixin(MGBPC!(524, 0x400)()); }
		bool bTestRippleCenterOnDetail(bool val) { mixin(MSBPC!(524, 0x400)()); }
		bool bTestRipple() { mixin(MGBPC!(524, 0x200)()); }
		bool bTestRipple(bool val) { mixin(MSBPC!(524, 0x200)()); }
		bool bShowFluidDetail() { mixin(MGBPC!(524, 0x100)()); }
		bool bShowFluidDetail(bool val) { mixin(MSBPC!(524, 0x100)()); }
		bool bShowFluidSimulation() { mixin(MGBPC!(524, 0x80)()); }
		bool bShowFluidSimulation(bool val) { mixin(MSBPC!(524, 0x80)()); }
		bool bShowDetailPosition() { mixin(MGBPC!(524, 0x40)()); }
		bool bShowDetailPosition(bool val) { mixin(MSBPC!(524, 0x40)()); }
		bool bShowDetailNormals() { mixin(MGBPC!(524, 0x20)()); }
		bool bShowDetailNormals(bool val) { mixin(MSBPC!(524, 0x20)()); }
		bool bShowSimulationPosition() { mixin(MGBPC!(524, 0x10)()); }
		bool bShowSimulationPosition(bool val) { mixin(MSBPC!(524, 0x10)()); }
		bool bShowSimulationNormals() { mixin(MGBPC!(524, 0x8)()); }
		bool bShowSimulationNormals(bool val) { mixin(MSBPC!(524, 0x8)()); }
		bool bPause() { mixin(MGBPC!(524, 0x4)()); }
		bool bPause(bool val) { mixin(MSBPC!(524, 0x4)()); }
		bool EnableDetail() { mixin(MGBPC!(524, 0x2)()); }
		bool EnableDetail(bool val) { mixin(MSBPC!(524, 0x2)()); }
		bool EnableSimulation() { mixin(MGBPC!(524, 0x1)()); }
		bool EnableSimulation(bool val) { mixin(MSBPC!(524, 0x1)()); }
	}
final:
	void ApplyForce(Vector WorldPos, float Strength, float Radius, bool bImpulse)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = WorldPos;
		*cast(float*)&params[12] = Strength;
		*cast(float*)&params[16] = Radius;
		*cast(bool*)&params[20] = bImpulse;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyForce, params.ptr, cast(void*)0);
	}
	void SetDetailPosition(Vector WorldPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = WorldPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDetailPosition, params.ptr, cast(void*)0);
	}
	void SetSimulationPosition(Vector WorldPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = WorldPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSimulationPosition, params.ptr, cast(void*)0);
	}
}
