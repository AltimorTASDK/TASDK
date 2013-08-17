module UnrealScript.Engine.MaterialExpressionAppendVector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionAppendVector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionAppendVector")()); }
	private static __gshared MaterialExpressionAppendVector mDefaultProperties;
	@property final static MaterialExpressionAppendVector DefaultProperties() { mixin(MGDPC!(MaterialExpressionAppendVector, "MaterialExpressionAppendVector Engine.Default__MaterialExpressionAppendVector")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC!(MaterialExpression.ExpressionInput, 108)()); }
	}
}
