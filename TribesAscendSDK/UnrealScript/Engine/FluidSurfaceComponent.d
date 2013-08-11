module UnrealScript.Engine.FluidSurfaceComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ShadowMap2D;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface FluidSurfaceComponent : PrimitiveComponent
{
	public @property final auto ref float ForceImpact() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref ScriptArray!(ubyte) ClampMap() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref ScriptArray!(ShadowMap2D) ShadowMaps() { return *cast(ScriptArray!(ShadowMap2D)*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref UObject.Pointer FluidSimulation() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref EngineTypes.LightMapRef LightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref Vector EditorViewPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref Vector DetailPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref Vector SimulationPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref float ViewDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref float DeactivationTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref float TestRippleAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref float TestRippleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref float FluidHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref float FluidWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref float TestRippleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref float TestRippleFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref float TestRippleSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref float NormalLength() { return *cast(float*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref float DetailUpdateRate() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref float DetailHeightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref float DetailTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref float DetailTravelSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref float DetailDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref float DetailSize() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref int DetailResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref float DeactivationDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref Actor TargetDetail() { return *cast(Actor*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float LightingContrast() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float ForceContinuous() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float FluidUpdateRate() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float FluidHeightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float FluidTravelSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float FluidDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float GPUTessellationFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref Actor TargetSimulation() { return *cast(Actor*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref float GridSpacingLowRes() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref float GridSpacing() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref int SimulationQuadsY() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref int SimulationQuadsX() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
	public @property final bool bTestRippleCenterOnDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x400) != 0; }
	public @property final bool bTestRippleCenterOnDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x400; } return val; }
	public @property final bool bTestRipple() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x200) != 0; }
	public @property final bool bTestRipple(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x200; } return val; }
	public @property final bool bShowFluidDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x100) != 0; }
	public @property final bool bShowFluidDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x100; } return val; }
	public @property final bool bShowFluidSimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x80) != 0; }
	public @property final bool bShowFluidSimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x80; } return val; }
	public @property final bool bShowDetailPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x40) != 0; }
	public @property final bool bShowDetailPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x40; } return val; }
	public @property final bool bShowDetailNormals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x20) != 0; }
	public @property final bool bShowDetailNormals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x20; } return val; }
	public @property final bool bShowSimulationPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x10) != 0; }
	public @property final bool bShowSimulationPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x10; } return val; }
	public @property final bool bShowSimulationNormals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x8) != 0; }
	public @property final bool bShowSimulationNormals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x8; } return val; }
	public @property final bool bPause() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x4) != 0; }
	public @property final bool bPause(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x4; } return val; }
	public @property final bool EnableDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x2) != 0; }
	public @property final bool EnableDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x2; } return val; }
	public @property final bool EnableSimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x1) != 0; }
	public @property final bool EnableSimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x1; } return val; }
	public @property final auto ref EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref int LightMapResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref MaterialInterface FluidMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 488); }
	final void ApplyForce(Vector WorldPos, float Strength, float Radius, bool bImpulse)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = WorldPos;
		*cast(float*)&params[12] = Strength;
		*cast(float*)&params[16] = Radius;
		*cast(bool*)&params[20] = bImpulse;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4229], params.ptr, cast(void*)0);
	}
	final void SetDetailPosition(Vector WorldPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = WorldPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15822], params.ptr, cast(void*)0);
	}
	final void SetSimulationPosition(Vector WorldPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = WorldPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15824], params.ptr, cast(void*)0);
	}
}
