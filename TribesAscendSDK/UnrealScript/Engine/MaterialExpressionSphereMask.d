module UnrealScript.Engine.MaterialExpressionSphereMask;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSphereMask : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		float HardnessPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
		float AttenuationRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
