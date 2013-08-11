module UnrealScript.Engine.MaterialExpressionTextureSampleParameterNormal;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameterNormal : MaterialExpressionTextureSampleParameter
{
public extern(D):
	@property final auto ref UObject.Pointer InstanceOverride() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 164); }
}
