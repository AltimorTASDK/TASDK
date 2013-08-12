module UnrealScript.Engine.MaterialExpressionAppendVector;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionAppendVector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionAppendVector")); }
	private static __gshared MaterialExpressionAppendVector mDefaultProperties;
	@property final static MaterialExpressionAppendVector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionAppendVector)("MaterialExpressionAppendVector Engine.Default__MaterialExpressionAppendVector")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
