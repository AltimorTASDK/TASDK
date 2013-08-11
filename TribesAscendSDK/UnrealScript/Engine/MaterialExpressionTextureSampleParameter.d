module UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionTextureSample;

extern(C++) interface MaterialExpressionTextureSampleParameter : MaterialExpressionTextureSample
{
	public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 140); }
}
