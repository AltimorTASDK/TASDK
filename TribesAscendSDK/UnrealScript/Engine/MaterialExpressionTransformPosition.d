module UnrealScript.Engine.MaterialExpressionTransformPosition;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTransformPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTransformPosition")); }
	private static __gshared MaterialExpressionTransformPosition mDefaultProperties;
	@property final static MaterialExpressionTransformPosition DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionTransformPosition)("MaterialExpressionTransformPosition Engine.Default__MaterialExpressionTransformPosition")); }
	enum EMaterialPositionTransform : ubyte
	{
		TRANSFORMPOS_World = 0,
		TRANSFORMPOS_MAX = 1,
	}
	@property final auto ref
	{
		MaterialExpressionTransformPosition.EMaterialPositionTransform TransformType() { return *cast(MaterialExpressionTransformPosition.EMaterialPositionTransform*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
