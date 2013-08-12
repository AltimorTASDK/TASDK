module UnrealScript.Engine.MaterialExpressionConstant;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionConstant")); }
	private static __gshared MaterialExpressionConstant mDefaultProperties;
	@property final static MaterialExpressionConstant DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionConstant)("MaterialExpressionConstant Engine.Default__MaterialExpressionConstant")); }
	@property final auto ref float R() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
}
