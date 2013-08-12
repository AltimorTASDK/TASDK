module UnrealScript.Engine.MaterialExpressionPower;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPower : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionPower")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Exponent() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Base() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
