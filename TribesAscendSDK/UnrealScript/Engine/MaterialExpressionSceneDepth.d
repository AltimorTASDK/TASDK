module UnrealScript.Engine.MaterialExpressionSceneDepth;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSceneDepth : MaterialExpression
{
public extern(D):
	@property final
	{
		@property final auto ref MaterialExpression.ExpressionInput Coordinates() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
		bool bNormalize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
		bool bNormalize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
	}
}
