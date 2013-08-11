module UnrealScript.Engine.MaterialExpressionTerrainLayerCoords;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTerrainLayerCoords : MaterialExpression
{
	enum ETerrainCoordMappingType : ubyte
	{
		TCMT_Auto = 0,
		TCMT_XY = 1,
		TCMT_XZ = 2,
		TCMT_YZ = 3,
		TCMT_MAX = 4,
	}
	public @property final auto ref float MappingPanV() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float MappingPanU() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float MappingRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float MappingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref MaterialExpressionTerrainLayerCoords.ETerrainCoordMappingType MappingType() { return *cast(MaterialExpressionTerrainLayerCoords.ETerrainCoordMappingType*)(cast(size_t)cast(void*)this + 108); }
}
