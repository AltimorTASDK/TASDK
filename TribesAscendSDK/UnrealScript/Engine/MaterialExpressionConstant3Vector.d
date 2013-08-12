module UnrealScript.Engine.MaterialExpressionConstant3Vector;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant3Vector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionConstant3Vector")); }
	private static __gshared MaterialExpressionConstant3Vector mDefaultProperties;
	@property final static MaterialExpressionConstant3Vector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionConstant3Vector)("MaterialExpressionConstant3Vector Engine.Default__MaterialExpressionConstant3Vector")); }
	@property final auto ref
	{
		float B() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
		float G() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
		float R() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	}
}
