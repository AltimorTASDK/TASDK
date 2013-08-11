module UnrealScript.Engine.TerrainMaterial;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface TerrainMaterial : UObject
{
	enum ETerrainMappingType : ubyte
	{
		TMT_Auto = 0,
		TMT_XY = 1,
		TMT_XZ = 2,
		TMT_YZ = 3,
		TMT_MAX = 4,
	}
	public @property final auto ref float DisplacementScale() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref Texture2D DisplacementMap() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 152); }
	// WARNING: Property 'Material' has the same name as a defined type!
	public @property final auto ref float MappingPanV() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float MappingPanU() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float MappingRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float MappingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref TerrainMaterial.ETerrainMappingType MappingType() { return *cast(TerrainMaterial.ETerrainMappingType*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref UObject.Matrix LocalToMapping() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 64); }
}
