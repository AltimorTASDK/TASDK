module UnrealScript.Engine.MaterialExpressionIf;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionIf : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionIf")); }
	private static __gshared MaterialExpressionIf mDefaultProperties;
	@property final static MaterialExpressionIf DefaultProperties() { mixin(MGDPC("MaterialExpressionIf", "MaterialExpressionIf Engine.Default__MaterialExpressionIf")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput ALessThanB() { mixin(MGPC("MaterialExpression.ExpressionInput", 220)); }
		MaterialExpression.ExpressionInput AEqualsB() { mixin(MGPC("MaterialExpression.ExpressionInput", 192)); }
		MaterialExpression.ExpressionInput AGreaterThanB() { mixin(MGPC("MaterialExpression.ExpressionInput", 164)); }
		MaterialExpression.ExpressionInput B() { mixin(MGPC("MaterialExpression.ExpressionInput", 136)); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
	}
}
