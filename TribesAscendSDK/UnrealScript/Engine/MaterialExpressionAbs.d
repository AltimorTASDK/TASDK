module UnrealScript.Engine.MaterialExpressionAbs;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionAbs : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionAbs")()); }
	private static __gshared MaterialExpressionAbs mDefaultProperties;
	@property final static MaterialExpressionAbs DefaultProperties() { mixin(MGDPC!(MaterialExpressionAbs, "MaterialExpressionAbs Engine.Default__MaterialExpressionAbs")()); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
