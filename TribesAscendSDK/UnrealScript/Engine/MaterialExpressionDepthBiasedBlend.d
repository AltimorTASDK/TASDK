module UnrealScript.Engine.MaterialExpressionDepthBiasedBlend;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDepthBiasedBlend : MaterialExpression
{
	public @property final auto ref MaterialExpression.ExpressionInput Bias() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref MaterialExpression.ExpressionInput Alpha() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref MaterialExpression.ExpressionInput RGB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float BiasScale() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final bool bNormalize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
	public @property final bool bNormalize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
}
