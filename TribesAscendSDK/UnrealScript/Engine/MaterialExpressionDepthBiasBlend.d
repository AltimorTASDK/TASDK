module UnrealScript.Engine.MaterialExpressionDepthBiasBlend;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSample;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDepthBiasBlend : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionDepthBiasBlend")); }
	private static __gshared MaterialExpressionDepthBiasBlend mDefaultProperties;
	@property final static MaterialExpressionDepthBiasBlend DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionDepthBiasBlend)("MaterialExpressionDepthBiasBlend Engine.Default__MaterialExpressionDepthBiasBlend")); }
	@property final
	{
		auto ref
		{
			MaterialExpression.ExpressionInput Bias() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 148); }
			float BiasScale() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		}
		bool bNormalize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bNormalize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
