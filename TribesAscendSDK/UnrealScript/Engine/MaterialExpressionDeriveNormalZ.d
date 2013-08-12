module UnrealScript.Engine.MaterialExpressionDeriveNormalZ;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDeriveNormalZ : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionDeriveNormalZ")); }
	@property final auto ref MaterialExpression.ExpressionInput InXY() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
