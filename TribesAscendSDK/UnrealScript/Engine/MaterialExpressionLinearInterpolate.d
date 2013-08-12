module UnrealScript.Engine.MaterialExpressionLinearInterpolate;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLinearInterpolate : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionLinearInterpolate")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Alpha() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
