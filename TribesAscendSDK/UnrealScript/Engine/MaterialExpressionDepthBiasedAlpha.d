module UnrealScript.Engine.MaterialExpressionDepthBiasedAlpha;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDepthBiasedAlpha : MaterialExpression
{
public extern(D):
	@property final
	{
		auto ref
		{
			MaterialExpression.ExpressionInput Bias() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 144); }
			MaterialExpression.ExpressionInput Alpha() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 116); }
			float BiasScale() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
		}
		bool bNormalize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bNormalize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
