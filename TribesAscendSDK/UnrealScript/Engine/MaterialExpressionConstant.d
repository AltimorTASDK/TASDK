module UnrealScript.Engine.MaterialExpressionConstant;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionConstant")()); }
	private static __gshared MaterialExpressionConstant mDefaultProperties;
	@property final static MaterialExpressionConstant DefaultProperties() { mixin(MGDPC!(MaterialExpressionConstant, "MaterialExpressionConstant Engine.Default__MaterialExpressionConstant")()); }
	@property final auto ref float R() { mixin(MGPC!(float, 108)()); }
}
