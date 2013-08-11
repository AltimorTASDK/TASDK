module UnrealScript.Engine.MaterialExpressionDynamicParameter;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDynamicParameter : MaterialExpression
{
	public @property final auto ref ScriptArray!(ScriptString) ParamNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 108); }
}
