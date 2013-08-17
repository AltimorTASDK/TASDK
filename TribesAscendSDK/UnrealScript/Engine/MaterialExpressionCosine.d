module UnrealScript.Engine.MaterialExpressionCosine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCosine : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionCosine")); }
	private static __gshared MaterialExpressionCosine mDefaultProperties;
	@property final static MaterialExpressionCosine DefaultProperties() { mixin(MGDPC("MaterialExpressionCosine", "MaterialExpressionCosine Engine.Default__MaterialExpressionCosine")); }
	@property final auto ref
	{
		float Period() { mixin(MGPC("float", 136)); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
