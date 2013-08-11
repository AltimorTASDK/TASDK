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
public extern(D):
	@property final
	{
		auto ref
		{
			float ForceImpact() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			ScriptArray!(ubyte) ClampMap() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 692); }
			ScriptArray!(ShadowMap2D) ShadowMaps() { return *cast(ScriptArray!(ShadowMap2D)*)(cast(size_t)cast(void*)this + 704); }
			UObject.Pointer FluidSimulation() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 720); }
			EngineTypes.LightMapRef LightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 716); }
			Vector EditorViewPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 680); }
			Vector DetailPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 668); }
			Vector SimulationPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 656); }
			float ViewDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
			float DeactivationTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 648); }
			float TestRippleAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 644); }
			float TestRippleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 640); }
			float FluidHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			float FluidWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float TestRippleRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
			float TestRippleFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			float TestRippleSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
			float NormalLength() { return *cast(float*)(cast(size_t)cast(void*)this + 616); }
			float DetailUpdateRate() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
			float DetailHeightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float DetailTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			float DetailTravelSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
			float DetailDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
			float DetailSize() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			int DetailResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
			float DeactivationDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
			Actor TargetDetail() { return *cast(Actor*)(cast(size_t)cast(void*)this + 580); }
			float LightingContrast() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float ForceContinuous() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float FluidUpdateRate() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			float FluidHeightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float FluidTravelSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float FluidDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float GPUTessellationFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			Actor TargetSimulation() { return *cast(Actor*)(cast(size_t)cast(void*)this + 544); }
			float GridSpacingLowRes() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			float GridSpacing() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
			int SimulationQuadsY() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
			int SimulationQuadsX() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
			EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 496); }
			int LightMapResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
			MaterialInterface FluidMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bTestRippleCenterOnDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x400) != 0; }
		bool bTestRippleCenterOnDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x400; } return val; }
		bool bTestRipple() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x200) != 0; }
		bool bTestRipple(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x200; } return val; }
		bool bShowFluidDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x100) != 0; }
		bool bShowFluidDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x100; } return val; }
		bool bShowFluidSimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x80) != 0; }
		bool bShowFluidSimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x80; } return val; }
		bool bShowDetailPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x40) != 0; }
		bool bShowDetailPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x40; } return val; }
		bool bShowDetailNormals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x20) != 0; }
		bool bShowDetailNormals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x20; } return val; }
		bool bShowSimulationPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x10) != 0; }
		bool bShowSimulationPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x10; } return val; }
		bool bShowSimulationNormals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x8) != 0; }
		bool bShowSimulationNormals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x8; } return val; }
		bool bPause() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x4) != 0; }
		bool bPause(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x4; } return val; }
		bool EnableDetail() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x2) != 0; }
		bool EnableDetail(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x2; } return val; }
		bool EnableSimulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x1) != 0; }
		bool EnableSimulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x1; } return val; }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4229], params.ptr, cast(void*)0);
	}
	void SetDetailPosition(Vector WorldPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = WorldPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15822], params.ptr, cast(void*)0);
	}
	void SetSimulationPosition(Vector WorldPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = WorldPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15824], params.ptr, cast(void*)0);
	}
}
