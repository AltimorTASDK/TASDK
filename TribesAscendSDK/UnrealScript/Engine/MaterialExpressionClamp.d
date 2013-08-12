module UnrealScript.Engine.MaterialExpressionClamp;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionClamp : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionClamp")); }
	private static __gshared MaterialExpressionClamp mDefaultProperties;
	@property final static MaterialExpressionClamp DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionClamp)("MaterialExpressionClamp Engine.Default__MaterialExpressionClamp")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Max() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Min() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
