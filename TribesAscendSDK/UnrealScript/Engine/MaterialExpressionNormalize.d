module UnrealScript.Engine.MaterialExpressionNormalize;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionNormalize : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionNormalize")); }
	@property final auto ref MaterialExpression.ExpressionInput VectorInput() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
