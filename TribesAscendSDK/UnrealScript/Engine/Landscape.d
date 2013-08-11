module UnrealScript.Engine.Landscape;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.Material;

extern(C++) interface Landscape : Info
{
public extern(D):
	struct LandscapeLayerInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final
		{
			auto ref
			{
				MaterialInstanceConstant ThumbnailMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)&this + 16); }
				float Hardness() { return *cast(float*)(cast(size_t)&this + 8); }
				ScriptName LayerName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bNoWeightBlend() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bNoWeightBlend(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct LandscapeWeightmapUsage
	{
		private ubyte __buffer__[16];
	public extern(D):
	}
	@property final auto ref
	{
		ScriptArray!(ScriptName) LayerNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 484); }
		ScriptArray!(Landscape.LandscapeLayerInfo) LayerInfos() { return *cast(ScriptArray!(Landscape.LandscapeLayerInfo)*)(cast(size_t)cast(void*)this + 496); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) LandscapeComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 604); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) CollisionComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 616); }
		int NumSubsections() { return *cast(int*)(cast(size_t)cast(void*)this + 820); }
		int SubsectionSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
		int ComponentSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 812); }
		UObject.Pointer DataInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 808); }
		float StreamingDistanceMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
		int StaticLightingResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
		EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 568); }
		int MaxLODLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
		Material LandscapeMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 476); }
	}
}
