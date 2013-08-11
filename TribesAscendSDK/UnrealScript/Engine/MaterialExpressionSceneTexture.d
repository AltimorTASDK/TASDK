module UnrealScript.Engine.MaterialExpressionSceneTexture;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSceneTexture : MaterialExpression
{
	enum ESceneTextureType : ubyte
	{
		SceneTex_Lighting = 0,
		SceneTex_MAX = 1,
	}
	public @property final bool ScreenAlign() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool ScreenAlign(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	public @property final auto ref MaterialExpressionSceneTexture.ESceneTextureType SceneTextureType() { return *cast(MaterialExpressionSceneTexture.ESceneTextureType*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput Coordinates() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
