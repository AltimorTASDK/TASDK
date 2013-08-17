module UnrealScript.Engine.MaterialExpressionLensFlareRadialDistance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareRadialDistance : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionLensFlareRadialDistance")); }
	private static __gshared MaterialExpressionLensFlareRadialDistance mDefaultProperties;
	@property final static MaterialExpressionLensFlareRadialDistance DefaultProperties() { mixin(MGDPC("MaterialExpressionLensFlareRadialDistance", "MaterialExpressionLensFlareRadialDistance Engine.Default__MaterialExpressionLensFlareRadialDistance")); }
}
