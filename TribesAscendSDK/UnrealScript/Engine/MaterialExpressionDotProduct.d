module UnrealScript.Engine.MaterialExpressionDotProduct;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDotProduct : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionDotProduct")); }
	private static __gshared MaterialExpressionDotProduct mDefaultProperties;
	@property final static MaterialExpressionDotProduct DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionDotProduct)("MaterialExpressionDotProduct Engine.Default__MaterialExpressionDotProduct")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
