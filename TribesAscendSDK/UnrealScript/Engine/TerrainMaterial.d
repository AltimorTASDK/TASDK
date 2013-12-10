module UnrealScript.Engine.TerrainMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface TerrainMaterial : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.TerrainMaterial")); }
	private static __gshared TerrainMaterial mDefaultProperties;
	@property final static TerrainMaterial DefaultProperties() { mixin(MGDPC("TerrainMaterial", "TerrainMaterial Engine.Default__TerrainMaterial")); }
	enum ETerrainMappingType : ubyte
	{
		TMT_Auto = 0,
		TMT_XY = 1,
		TMT_XZ = 2,
		TMT_YZ = 3,
		TMT_MAX = 4,
	}
	@property final auto ref
	{
		float DisplacementScale() { mixin(MGPC("float", 156)); }
		Texture2D DisplacementMap() { mixin(MGPC("Texture2D", 152)); }
		MaterialInterface MaterialVar() { mixin(MGPC("MaterialInterface", 148)); }
		float MappingPanV() { mixin(MGPC("float", 144)); }
		float MappingPanU() { mixin(MGPC("float", 140)); }
		float MappingRotation() { mixin(MGPC("float", 136)); }
		float MappingScale() { mixin(MGPC("float", 132)); }
		TerrainMaterial.ETerrainMappingType MappingType() { mixin(MGPC("TerrainMaterial.ETerrainMappingType", 128)); }
		UObject.Matrix LocalToMapping() { mixin(MGPC("UObject.Matrix", 64)); }
	}
}
