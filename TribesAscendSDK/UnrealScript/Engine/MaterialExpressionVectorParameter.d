module UnrealScript.Engine.MaterialExpressionVectorParameter;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;

extern(C++) interface MaterialExpressionVectorParameter : MaterialExpressionParameter
{
public extern(D):
	@property final auto ref UObject.LinearColor DefaultValue() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 132); }
}
