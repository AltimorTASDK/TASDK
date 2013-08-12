module UnrealScript.Engine.MaterialExpressionObjectRadius;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionObjectRadius : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionObjectRadius")); }
	private static __gshared MaterialExpressionObjectRadius mDefaultProperties;
	@property final static MaterialExpressionObjectRadius DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionObjectRadius)("MaterialExpressionObjectRadius Engine.Default__MaterialExpressionObjectRadius")); }
}
