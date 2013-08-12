module UnrealScript.Engine.MaterialExpressionObjectWorldPosition;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionObjectWorldPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionObjectWorldPosition")); }
	private static __gshared MaterialExpressionObjectWorldPosition mDefaultProperties;
	@property final static MaterialExpressionObjectWorldPosition DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionObjectWorldPosition)("MaterialExpressionObjectWorldPosition Engine.Default__MaterialExpressionObjectWorldPosition")); }
}
