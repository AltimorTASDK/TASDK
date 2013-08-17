module UnrealScript.Engine.MaterialExpressionCameraVector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCameraVector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionCameraVector")()); }
	private static __gshared MaterialExpressionCameraVector mDefaultProperties;
	@property final static MaterialExpressionCameraVector DefaultProperties() { mixin(MGDPC!(MaterialExpressionCameraVector, "MaterialExpressionCameraVector Engine.Default__MaterialExpressionCameraVector")()); }
}
