module UnrealScript.Engine.MaterialExpressionPixelDepth;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPixelDepth : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionPixelDepth")()); }
	private static __gshared MaterialExpressionPixelDepth mDefaultProperties;
	@property final static MaterialExpressionPixelDepth DefaultProperties() { mixin(MGDPC!(MaterialExpressionPixelDepth, "MaterialExpressionPixelDepth Engine.Default__MaterialExpressionPixelDepth")()); }
	@property final
	{
		bool bNormalize() { mixin(MGBPC!(108, 0x1)()); }
		bool bNormalize(bool val) { mixin(MSBPC!(108, 0x1)()); }
	}
}
