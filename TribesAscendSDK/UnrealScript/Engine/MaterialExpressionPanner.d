module UnrealScript.Engine.MaterialExpressionPanner;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPanner : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionPanner")); }
	private static __gshared MaterialExpressionPanner mDefaultProperties;
	@property final static MaterialExpressionPanner DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionPanner)("MaterialExpressionPanner Engine.Default__MaterialExpressionPanner")); }
	@property final auto ref
	{
		float SpeedY() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
		float SpeedX() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Time() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Coordinate() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
