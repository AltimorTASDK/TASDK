module UnrealScript.Engine.MaterialExpressionLensFlareOcclusion;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareOcclusion : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionLensFlareOcclusion")); }
	private static __gshared MaterialExpressionLensFlareOcclusion mDefaultProperties;
	@property final static MaterialExpressionLensFlareOcclusion DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionLensFlareOcclusion)("MaterialExpressionLensFlareOcclusion Engine.Default__MaterialExpressionLensFlareOcclusion")); }
}
