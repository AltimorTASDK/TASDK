module UnrealScript.Engine.MaterialExpressionClamp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionClamp : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionClamp")()); }
	private static __gshared MaterialExpressionClamp mDefaultProperties;
	@property final static MaterialExpressionClamp DefaultProperties() { mixin(MGDPC!(MaterialExpressionClamp, "MaterialExpressionClamp Engine.Default__MaterialExpressionClamp")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Max() { mixin(MGPC!(MaterialExpression.ExpressionInput, 164)()); }
		MaterialExpression.ExpressionInput Min() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
