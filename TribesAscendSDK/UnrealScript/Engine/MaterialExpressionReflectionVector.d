module UnrealScript.Engine.MaterialExpressionReflectionVector;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionReflectionVector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionReflectionVector")); }
	private static __gshared MaterialExpressionReflectionVector mDefaultProperties;
	@property final static MaterialExpressionReflectionVector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionReflectionVector)("MaterialExpressionReflectionVector Engine.Default__MaterialExpressionReflectionVector")); }
}
