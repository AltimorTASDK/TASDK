module UnrealScript.Engine.MaterialExpressionNormalize;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionNormalize : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionNormalize")); }
	private static __gshared MaterialExpressionNormalize mDefaultProperties;
	@property final static MaterialExpressionNormalize DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionNormalize)("MaterialExpressionNormalize Engine.Default__MaterialExpressionNormalize")); }
	@property final auto ref MaterialExpression.ExpressionInput VectorInput() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
