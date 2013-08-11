module UnrealScript.Engine.MaterialExpressionFontSampleParameter;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionFontSample;
import UnrealScript.Core.UObject;

extern(C++) interface MaterialExpressionFontSampleParameter : MaterialExpressionFontSample
{
	public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 116); }
}
