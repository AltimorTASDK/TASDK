module UnrealScript.Engine.MaterialExpressionParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionParameter : MaterialExpression
{
	public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 108); }
}
