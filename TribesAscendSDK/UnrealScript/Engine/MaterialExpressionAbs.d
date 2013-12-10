module UnrealScript.Engine.MaterialExpressionAbs;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionAbs : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionAbs")); }
	private static __gshared MaterialExpressionAbs mDefaultProperties;
	@property final static MaterialExpressionAbs DefaultProperties() { mixin(MGDPC("MaterialExpressionAbs", "MaterialExpressionAbs Engine.Default__MaterialExpressionAbs")); }
	@property final auto ref MaterialExpression.ExpressionInput InputVar() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
}
