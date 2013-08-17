module UnrealScript.Engine.MaterialExpressionFmod;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFmod : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionFmod")); }
	private static __gshared MaterialExpressionFmod mDefaultProperties;
	@property final static MaterialExpressionFmod DefaultProperties() { mixin(MGDPC("MaterialExpressionFmod", "MaterialExpressionFmod Engine.Default__MaterialExpressionFmod")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC("MaterialExpression.ExpressionInput", 136)); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
	}
}
