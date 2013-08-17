module UnrealScript.Engine.MaterialExpressionLensFlareOcclusion;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareOcclusion : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionLensFlareOcclusion")); }
	private static __gshared MaterialExpressionLensFlareOcclusion mDefaultProperties;
	@property final static MaterialExpressionLensFlareOcclusion DefaultProperties() { mixin(MGDPC("MaterialExpressionLensFlareOcclusion", "MaterialExpressionLensFlareOcclusion Engine.Default__MaterialExpressionLensFlareOcclusion")); }
}
