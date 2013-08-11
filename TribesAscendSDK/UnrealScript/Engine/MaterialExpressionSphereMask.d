module UnrealScript.Engine.MaterialExpressionSphereMask;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSphereMask : MaterialExpression
{
	public @property final auto ref float HardnessPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float AttenuationRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
