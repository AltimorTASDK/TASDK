module UnrealScript.Engine.MaterialExpressionSceneTexture;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSceneTexture : MaterialExpression
{
public extern(D):
	enum ESceneTextureType : ubyte
	{
		SceneTex_Lighting = 0,
		SceneTex_MAX = 1,
	}
	@property final
	{
		auto ref
		{
			MaterialExpressionSceneTexture.ESceneTextureType SceneTextureType() { return *cast(MaterialExpressionSceneTexture.ESceneTextureType*)(cast(size_t)cast(void*)this + 136); }
			MaterialExpression.ExpressionInput Coordinates() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
		}
		bool ScreenAlign() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool ScreenAlign(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
