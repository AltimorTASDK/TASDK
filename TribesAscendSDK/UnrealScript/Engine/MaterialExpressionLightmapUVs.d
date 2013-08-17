module UnrealScript.Engine.MaterialExpressionLightmapUVs;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLightmapUVs : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionLightmapUVs")); }
	private static __gshared MaterialExpressionLightmapUVs mDefaultProperties;
	@property final static MaterialExpressionLightmapUVs DefaultProperties() { mixin(MGDPC("MaterialExpressionLightmapUVs", "MaterialExpressionLightmapUVs Engine.Default__MaterialExpressionLightmapUVs")); }
}
