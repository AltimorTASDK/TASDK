module UnrealScript.Engine.MaterialExpressionRotator;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionRotator : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionRotator")); }
	private static __gshared MaterialExpressionRotator mDefaultProperties;
	@property final static MaterialExpressionRotator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionRotator)("MaterialExpressionRotator Engine.Default__MaterialExpressionRotator")); }
	@property final auto ref
	{
		float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
		float CenterY() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
		float CenterX() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Time() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Coordinate() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
