module UnrealScript.Engine.MaterialExpressionWorldPosition;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionWorldPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionWorldPosition")()); }
	private static __gshared MaterialExpressionWorldPosition mDefaultProperties;
	@property final static MaterialExpressionWorldPosition DefaultProperties() { mixin(MGDPC!(MaterialExpressionWorldPosition, "MaterialExpressionWorldPosition Engine.Default__MaterialExpressionWorldPosition")()); }
}
