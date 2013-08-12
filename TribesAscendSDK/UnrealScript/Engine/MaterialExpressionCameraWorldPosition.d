module UnrealScript.Engine.MaterialExpressionCameraWorldPosition;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCameraWorldPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionCameraWorldPosition")); }
	private static __gshared MaterialExpressionCameraWorldPosition mDefaultProperties;
	@property final static MaterialExpressionCameraWorldPosition DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionCameraWorldPosition)("MaterialExpressionCameraWorldPosition Engine.Default__MaterialExpressionCameraWorldPosition")); }
}
