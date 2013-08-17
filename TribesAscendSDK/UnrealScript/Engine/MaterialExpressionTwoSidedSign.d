module UnrealScript.Engine.MaterialExpressionTwoSidedSign;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTwoSidedSign : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionTwoSidedSign")); }
	private static __gshared MaterialExpressionTwoSidedSign mDefaultProperties;
	@property final static MaterialExpressionTwoSidedSign DefaultProperties() { mixin(MGDPC("MaterialExpressionTwoSidedSign", "MaterialExpressionTwoSidedSign Engine.Default__MaterialExpressionTwoSidedSign")); }
}
