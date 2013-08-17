module UnrealScript.Engine.MaterialExpressionDepthBiasBlend;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSample;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDepthBiasBlend : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDepthBiasBlend")()); }
	private static __gshared MaterialExpressionDepthBiasBlend mDefaultProperties;
	@property final static MaterialExpressionDepthBiasBlend DefaultProperties() { mixin(MGDPC!(MaterialExpressionDepthBiasBlend, "MaterialExpressionDepthBiasBlend Engine.Default__MaterialExpressionDepthBiasBlend")()); }
	@property final
	{
		auto ref
		{
			MaterialExpression.ExpressionInput Bias() { mixin(MGPC!("MaterialExpression.ExpressionInput", 148)()); }
			float BiasScale() { mixin(MGPC!("float", 144)()); }
		}
		bool bNormalize() { mixin(MGBPC!(140, 0x1)()); }
		bool bNormalize(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
}
