module UnrealScript.Engine.MaterialExpressionConstant4Vector;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant4Vector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionConstant4Vector")); }
	private static __gshared MaterialExpressionConstant4Vector mDefaultProperties;
	@property final static MaterialExpressionConstant4Vector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionConstant4Vector)("MaterialExpressionConstant4Vector Engine.Default__MaterialExpressionConstant4Vector")); }
	@property final auto ref
	{
		float A() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
		float B() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
		float G() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
		float R() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	}
}
