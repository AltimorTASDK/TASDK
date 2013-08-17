module UnrealScript.Engine.MaterialExpressionDepthBiasedAlpha;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDepthBiasedAlpha : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDepthBiasedAlpha")()); }
	private static __gshared MaterialExpressionDepthBiasedAlpha mDefaultProperties;
	@property final static MaterialExpressionDepthBiasedAlpha DefaultProperties() { mixin(MGDPC!(MaterialExpressionDepthBiasedAlpha, "MaterialExpressionDepthBiasedAlpha Engine.Default__MaterialExpressionDepthBiasedAlpha")()); }
	@property final
	{
		auto ref
		{
			MaterialExpression.ExpressionInput Bias() { mixin(MGPC!(MaterialExpression.ExpressionInput, 144)()); }
			MaterialExpression.ExpressionInput Alpha() { mixin(MGPC!(MaterialExpression.ExpressionInput, 116)()); }
			float BiasScale() { mixin(MGPC!(float, 112)()); }
		}
		bool bNormalize() { mixin(MGBPC!(108, 0x1)()); }
		bool bNormalize(bool val) { mixin(MSBPC!(108, 0x1)()); }
	}
}
