module UnrealScript.Engine.MaterialExpressionBumpOffset;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionBumpOffset : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionBumpOffset")); }
	private static __gshared MaterialExpressionBumpOffset mDefaultProperties;
	@property final static MaterialExpressionBumpOffset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionBumpOffset)("MaterialExpressionBumpOffset Engine.Default__MaterialExpressionBumpOffset")); }
	@property final auto ref
	{
		float ReferencePlane() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
		float HeightRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Height() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Coordinate() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
