module UnrealScript.Engine.MaterialExpressionOneMinus;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionOneMinus : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionOneMinus")); }
	private static __gshared MaterialExpressionOneMinus mDefaultProperties;
	@property final static MaterialExpressionOneMinus DefaultProperties() { mixin(MGDPC("MaterialExpressionOneMinus", "MaterialExpressionOneMinus Engine.Default__MaterialExpressionOneMinus")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
