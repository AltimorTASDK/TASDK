module UnrealScript.Engine.MaterialExpressionDestDepth;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDestDepth : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDestDepth")()); }
	private static __gshared MaterialExpressionDestDepth mDefaultProperties;
	@property final static MaterialExpressionDestDepth DefaultProperties() { mixin(MGDPC!(MaterialExpressionDestDepth, "MaterialExpressionDestDepth Engine.Default__MaterialExpressionDestDepth")()); }
	@property final
	{
		bool bNormalize() { mixin(MGBPC!(108, 0x1)()); }
		bool bNormalize(bool val) { mixin(MSBPC!(108, 0x1)()); }
	}
}
