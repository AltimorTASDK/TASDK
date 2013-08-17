module UnrealScript.Engine.MaterialExpressionDestColor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDestColor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDestColor")()); }
	private static __gshared MaterialExpressionDestColor mDefaultProperties;
	@property final static MaterialExpressionDestColor DefaultProperties() { mixin(MGDPC!(MaterialExpressionDestColor, "MaterialExpressionDestColor Engine.Default__MaterialExpressionDestColor")()); }
}
