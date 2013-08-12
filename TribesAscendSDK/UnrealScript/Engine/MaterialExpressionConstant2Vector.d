module UnrealScript.Engine.MaterialExpressionConstant2Vector;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant2Vector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionConstant2Vector")); }
	private static __gshared MaterialExpressionConstant2Vector mDefaultProperties;
	@property final static MaterialExpressionConstant2Vector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionConstant2Vector)("MaterialExpressionConstant2Vector Engine.Default__MaterialExpressionConstant2Vector")); }
	@property final auto ref
	{
		float G() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
		float R() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	}
}
