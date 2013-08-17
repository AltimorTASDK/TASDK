module UnrealScript.Engine.MaterialExpressionLensFlareIntensity;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareIntensity : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionLensFlareIntensity")()); }
	private static __gshared MaterialExpressionLensFlareIntensity mDefaultProperties;
	@property final static MaterialExpressionLensFlareIntensity DefaultProperties() { mixin(MGDPC!(MaterialExpressionLensFlareIntensity, "MaterialExpressionLensFlareIntensity Engine.Default__MaterialExpressionLensFlareIntensity")()); }
}
