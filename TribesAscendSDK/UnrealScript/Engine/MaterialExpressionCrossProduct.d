module UnrealScript.Engine.MaterialExpressionCrossProduct;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCrossProduct : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionCrossProduct")); }
	private static __gshared MaterialExpressionCrossProduct mDefaultProperties;
	@property final static MaterialExpressionCrossProduct DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionCrossProduct)("MaterialExpressionCrossProduct Engine.Default__MaterialExpressionCrossProduct")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
