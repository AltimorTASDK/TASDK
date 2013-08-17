module UnrealScript.Engine.MaterialExpressionLensFlareRayDistance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareRayDistance : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionLensFlareRayDistance")); }
	private static __gshared MaterialExpressionLensFlareRayDistance mDefaultProperties;
	@property final static MaterialExpressionLensFlareRayDistance DefaultProperties() { mixin(MGDPC("MaterialExpressionLensFlareRayDistance", "MaterialExpressionLensFlareRayDistance Engine.Default__MaterialExpressionLensFlareRayDistance")); }
}
