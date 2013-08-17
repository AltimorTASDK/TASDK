module UnrealScript.Engine.MaterialExpressionTime;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTime : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTime")()); }
	private static __gshared MaterialExpressionTime mDefaultProperties;
	@property final static MaterialExpressionTime DefaultProperties() { mixin(MGDPC!(MaterialExpressionTime, "MaterialExpressionTime Engine.Default__MaterialExpressionTime")()); }
	@property final
	{
		bool bIgnorePause() { mixin(MGBPC!(108, 0x1)()); }
		bool bIgnorePause(bool val) { mixin(MSBPC!(108, 0x1)()); }
	}
}
