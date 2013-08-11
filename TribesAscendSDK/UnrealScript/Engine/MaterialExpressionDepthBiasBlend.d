module UnrealScript.Engine.MaterialExpressionDepthBiasBlend;

import UnrealScript.Engine.MaterialExpressionTextureSample;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDepthBiasBlend : MaterialExpressionTextureSample
{
	public @property final auto ref MaterialExpression.ExpressionInput Bias() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float BiasScale() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final bool bNormalize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bNormalize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
}
