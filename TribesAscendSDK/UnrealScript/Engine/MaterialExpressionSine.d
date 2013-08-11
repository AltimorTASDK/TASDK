module UnrealScript.Engine.MaterialExpressionSine;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSine : MaterialExpression
{
	public @property final auto ref float Period() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
