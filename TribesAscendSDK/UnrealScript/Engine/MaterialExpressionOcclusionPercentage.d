module UnrealScript.Engine.MaterialExpressionOcclusionPercentage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionOcclusionPercentage : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionOcclusionPercentage")); }
	private static __gshared MaterialExpressionOcclusionPercentage mDefaultProperties;
	@property final static MaterialExpressionOcclusionPercentage DefaultProperties() { mixin(MGDPC("MaterialExpressionOcclusionPercentage", "MaterialExpressionOcclusionPercentage Engine.Default__MaterialExpressionOcclusionPercentage")); }
}
