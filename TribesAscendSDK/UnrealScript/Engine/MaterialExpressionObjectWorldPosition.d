module UnrealScript.Engine.MaterialExpressionObjectWorldPosition;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionObjectWorldPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionObjectWorldPosition")); }
	private static __gshared MaterialExpressionObjectWorldPosition mDefaultProperties;
	@property final static MaterialExpressionObjectWorldPosition DefaultProperties() { mixin(MGDPC("MaterialExpressionObjectWorldPosition", "MaterialExpressionObjectWorldPosition Engine.Default__MaterialExpressionObjectWorldPosition")); }
}
