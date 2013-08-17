module UnrealScript.Engine.MaterialExpressionSceneTexture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSceneTexture : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionSceneTexture")()); }
	private static __gshared MaterialExpressionSceneTexture mDefaultProperties;
	@property final static MaterialExpressionSceneTexture DefaultProperties() { mixin(MGDPC!(MaterialExpressionSceneTexture, "MaterialExpressionSceneTexture Engine.Default__MaterialExpressionSceneTexture")()); }
	enum ESceneTextureType : ubyte
	{
		SceneTex_Lighting = 0,
		SceneTex_MAX = 1,
	}
	@property final
	{
		auto ref
		{
			MaterialExpressionSceneTexture.ESceneTextureType SceneTextureType() { mixin(MGPC!(MaterialExpressionSceneTexture.ESceneTextureType, 136)()); }
			MaterialExpression.ExpressionInput Coordinates() { mixin(MGPC!(MaterialExpression.ExpressionInput, 108)()); }
		}
		bool ScreenAlign() { mixin(MGBPC!(140, 0x1)()); }
		bool ScreenAlign(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
}
