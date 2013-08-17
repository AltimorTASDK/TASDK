module UnrealScript.Engine.MaterialExpressionCameraWorldPosition;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCameraWorldPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionCameraWorldPosition")()); }
	private static __gshared MaterialExpressionCameraWorldPosition mDefaultProperties;
	@property final static MaterialExpressionCameraWorldPosition DefaultProperties() { mixin(MGDPC!(MaterialExpressionCameraWorldPosition, "MaterialExpressionCameraWorldPosition Engine.Default__MaterialExpressionCameraWorldPosition")()); }
}
