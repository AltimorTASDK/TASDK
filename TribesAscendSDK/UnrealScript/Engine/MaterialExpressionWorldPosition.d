module UnrealScript.Engine.MaterialExpressionWorldPosition;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionWorldPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionWorldPosition")); }
	private static __gshared MaterialExpressionWorldPosition mDefaultProperties;
	@property final static MaterialExpressionWorldPosition DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionWorldPosition)("MaterialExpressionWorldPosition Engine.Default__MaterialExpressionWorldPosition")); }
}
