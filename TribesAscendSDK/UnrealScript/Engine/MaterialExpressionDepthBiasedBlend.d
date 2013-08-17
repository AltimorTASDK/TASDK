module UnrealScript.Engine.MaterialExpressionDepthBiasedBlend;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDepthBiasedBlend : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionDepthBiasedBlend")); }
	private static __gshared MaterialExpressionDepthBiasedBlend mDefaultProperties;
	@property final static MaterialExpressionDepthBiasedBlend DefaultProperties() { mixin(MGDPC("MaterialExpressionDepthBiasedBlend", "MaterialExpressionDepthBiasedBlend Engine.Default__MaterialExpressionDepthBiasedBlend")); }
	@property final
	{
		auto ref
		{
			MaterialExpression.ExpressionInput Bias() { mixin(MGPC("MaterialExpression.ExpressionInput", 172)); }
			MaterialExpression.ExpressionInput Alpha() { mixin(MGPC("MaterialExpression.ExpressionInput", 144)); }
			MaterialExpression.ExpressionInput RGB() { mixin(MGPC("MaterialExpression.ExpressionInput", 116)); }
			float BiasScale() { mixin(MGPC("float", 112)); }
		}
		bool bNormalize() { mixin(MGBPC(108, 0x1)); }
		bool bNormalize(bool val) { mixin(MSBPC(108, 0x1)); }
	}
}
