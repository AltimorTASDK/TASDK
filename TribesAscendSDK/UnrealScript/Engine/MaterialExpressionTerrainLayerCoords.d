module UnrealScript.Engine.MaterialExpressionTerrainLayerCoords;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTerrainLayerCoords : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionTerrainLayerCoords")); }
	private static __gshared MaterialExpressionTerrainLayerCoords mDefaultProperties;
	@property final static MaterialExpressionTerrainLayerCoords DefaultProperties() { mixin(MGDPC("MaterialExpressionTerrainLayerCoords", "MaterialExpressionTerrainLayerCoords Engine.Default__MaterialExpressionTerrainLayerCoords")); }
	enum ETerrainCoordMappingType : ubyte
	{
		TCMT_Auto = 0,
		TCMT_XY = 1,
		TCMT_XZ = 2,
		TCMT_YZ = 3,
		TCMT_MAX = 4,
	}
	@property final auto ref
	{
		float MappingPanV() { mixin(MGPC("float", 124)); }
		float MappingPanU() { mixin(MGPC("float", 120)); }
		float MappingRotation() { mixin(MGPC("float", 116)); }
		float MappingScale() { mixin(MGPC("float", 112)); }
		MaterialExpressionTerrainLayerCoords.ETerrainCoordMappingType MappingType() { mixin(MGPC("MaterialExpressionTerrainLayerCoords.ETerrainCoordMappingType", 108)); }
	}
}
