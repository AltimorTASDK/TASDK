module UnrealScript.Engine.MaterialExpressionObjectRadius;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionObjectRadius : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionObjectRadius")()); }
	private static __gshared MaterialExpressionObjectRadius mDefaultProperties;
	@property final static MaterialExpressionObjectRadius DefaultProperties() { mixin(MGDPC!(MaterialExpressionObjectRadius, "MaterialExpressionObjectRadius Engine.Default__MaterialExpressionObjectRadius")()); }
}
