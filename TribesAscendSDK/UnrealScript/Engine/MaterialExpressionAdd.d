module UnrealScript.Engine.MaterialExpressionAdd;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionAdd : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionAdd")); }
	private static __gshared MaterialExpressionAdd mDefaultProperties;
	@property final static MaterialExpressionAdd DefaultProperties() { mixin(MGDPC("MaterialExpressionAdd", "MaterialExpressionAdd Engine.Default__MaterialExpressionAdd")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC("MaterialExpression.ExpressionInput", 136)); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
	}
}
