module UnrealScript.Engine.MaterialExpressionConstant3Vector;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant3Vector : MaterialExpression
{
	public @property final auto ref float B() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float G() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float R() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
}
