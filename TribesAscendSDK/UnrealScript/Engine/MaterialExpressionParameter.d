module UnrealScript.Engine.MaterialExpressionParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionParameter : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionParameter")); }
	private static __gshared MaterialExpressionParameter mDefaultProperties;
	@property final static MaterialExpressionParameter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionParameter)("MaterialExpressionParameter Engine.Default__MaterialExpressionParameter")); }
	@property final auto ref
	{
		UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 116); }
		ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 108); }
	}
}
