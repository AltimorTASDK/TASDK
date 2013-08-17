module UnrealScript.Engine.MaterialExpressionNormalize;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionNormalize : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionNormalize")); }
	private static __gshared MaterialExpressionNormalize mDefaultProperties;
	@property final static MaterialExpressionNormalize DefaultProperties() { mixin(MGDPC("MaterialExpressionNormalize", "MaterialExpressionNormalize Engine.Default__MaterialExpressionNormalize")); }
	@property final auto ref MaterialExpression.ExpressionInput VectorInput() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
}
