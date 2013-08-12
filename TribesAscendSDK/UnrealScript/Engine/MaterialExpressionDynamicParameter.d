module UnrealScript.Engine.MaterialExpressionDynamicParameter;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDynamicParameter : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionDynamicParameter")); }
	@property final auto ref ScriptArray!(ScriptString) ParamNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 108); }
}
