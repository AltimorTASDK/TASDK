module UnrealScript.Engine.MaterialExpressionTerrainLayerWeight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTerrainLayerWeight : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTerrainLayerWeight")()); }
	private static __gshared MaterialExpressionTerrainLayerWeight mDefaultProperties;
	@property final static MaterialExpressionTerrainLayerWeight DefaultProperties() { mixin(MGDPC!(MaterialExpressionTerrainLayerWeight, "MaterialExpressionTerrainLayerWeight Engine.Default__MaterialExpressionTerrainLayerWeight")()); }
	@property final auto ref
	{
		UObject.Guid ExpressionGUID() { mixin(MGPC!("UObject.Guid", 180)()); }
		float PreviewWeight() { mixin(MGPC!("float", 176)()); }
		ScriptName ParameterName() { mixin(MGPC!("ScriptName", 168)()); }
		MaterialExpression.ExpressionInput Layer() { mixin(MGPC!("MaterialExpression.ExpressionInput", 140)()); }
		MaterialExpression.ExpressionInput Base() { mixin(MGPC!("MaterialExpression.ExpressionInput", 112)()); }
		UObject.Pointer InstanceOverride() { mixin(MGPC!("UObject.Pointer", 108)()); }
	}
}
