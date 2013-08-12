module UnrealScript.Engine.TerrainMaterial;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface TerrainMaterial : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TerrainMaterial")); }
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
		float DisplacementScale() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
		Texture2D DisplacementMap() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 152); }
		// WARNING: Property 'Material' has the same name as a defined type!
		float MappingPanV() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		float MappingPanU() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
		float MappingRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
		float MappingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
		TerrainMaterial.ETerrainMappingType MappingType() { return *cast(TerrainMaterial.ETerrainMappingType*)(cast(size_t)cast(void*)this + 128); }
		UObject.Matrix LocalToMapping() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 64); }
	}
}
