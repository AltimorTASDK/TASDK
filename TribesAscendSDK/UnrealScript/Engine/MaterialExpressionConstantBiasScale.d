module UnrealScript.Engine.MaterialExpressionConstantBiasScale;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstantBiasScale : MaterialExpression
{
	public @property final auto ref float Scale() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float Bias() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
