module UnrealScript.Engine.MaterialExpressionWorldNormal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionWorldNormal : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionWorldNormal")); }
	private static __gshared MaterialExpressionWorldNormal mDefaultProperties;
	@property final static MaterialExpressionWorldNormal DefaultProperties() { mixin(MGDPC("MaterialExpressionWorldNormal", "MaterialExpressionWorldNormal Engine.Default__MaterialExpressionWorldNormal")); }
}
