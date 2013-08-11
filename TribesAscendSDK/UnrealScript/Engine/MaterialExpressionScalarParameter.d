module UnrealScript.Engine.MaterialExpressionScalarParameter;

import UnrealScript.Engine.MaterialExpressionParameter;

extern(C++) interface MaterialExpressionScalarParameter : MaterialExpressionParameter
{
public extern(D):
	@property final auto ref float DefaultValue() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
}
