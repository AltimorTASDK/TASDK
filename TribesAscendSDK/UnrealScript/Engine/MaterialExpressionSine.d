module UnrealScript.Engine.MaterialExpressionSine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSine : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionSine")); }
	private static __gshared MaterialExpressionSine mDefaultProperties;
	@property final static MaterialExpressionSine DefaultProperties() { mixin(MGDPC("MaterialExpressionSine", "MaterialExpressionSine Engine.Default__MaterialExpressionSine")); }
	@property final auto ref
	{
		float Period() { mixin(MGPC("float", 136)); }
		MaterialExpression.ExpressionInput InputVar() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
	}
}
