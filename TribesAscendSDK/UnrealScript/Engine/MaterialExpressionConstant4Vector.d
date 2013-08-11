module UnrealScript.Engine.MaterialExpressionConstant4Vector;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant4Vector : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		float A() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
		float B() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
		float G() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
		float R() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	}
}
