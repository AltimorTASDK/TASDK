module UnrealScript.Engine.MaterialExpressionTextureSampleParameterNormal;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameterNormal : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameterNormal")); }
	@property final auto ref UObject.Pointer InstanceOverride() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 164); }
}
