module UnrealScript.Engine.MaterialExpressionCosine;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCosine : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionCosine")); }
	private static __gshared MaterialExpressionCosine mDefaultProperties;
	@property final static MaterialExpressionCosine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionCosine)("MaterialExpressionCosine Engine.Default__MaterialExpressionCosine")); }
	@property final auto ref
	{
		float Period() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
