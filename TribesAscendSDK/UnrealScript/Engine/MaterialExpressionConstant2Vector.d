module UnrealScript.Engine.MaterialExpressionConstant2Vector;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant2Vector : MaterialExpression
{
	public @property final auto ref float G() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float R() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
}
