module UnrealScript.Engine.MaterialExpressionDynamicParameter;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDynamicParameter : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionDynamicParameter")); }
	private static __gshared MaterialExpressionDynamicParameter mDefaultProperties;
	@property final static MaterialExpressionDynamicParameter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionDynamicParameter)("MaterialExpressionDynamicParameter Engine.Default__MaterialExpressionDynamicParameter")); }
	@property final auto ref ScriptArray!(ScriptString) ParamNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 108); }
}
