module UnrealScript.Engine.MaterialExpressionLensFlareSourceDistance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareSourceDistance : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionLensFlareSourceDistance")); }
	private static __gshared MaterialExpressionLensFlareSourceDistance mDefaultProperties;
	@property final static MaterialExpressionLensFlareSourceDistance DefaultProperties() { mixin(MGDPC("MaterialExpressionLensFlareSourceDistance", "MaterialExpressionLensFlareSourceDistance Engine.Default__MaterialExpressionLensFlareSourceDistance")); }
}
