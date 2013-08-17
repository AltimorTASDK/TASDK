module UnrealScript.Engine.MaterialExpressionConstantClamp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstantClamp : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionConstantClamp")); }
	private static __gshared MaterialExpressionConstantClamp mDefaultProperties;
	@property final static MaterialExpressionConstantClamp DefaultProperties() { mixin(MGDPC("MaterialExpressionConstantClamp", "MaterialExpressionConstantClamp Engine.Default__MaterialExpressionConstantClamp")); }
	@property final auto ref
	{
		float Max() { mixin(MGPC("float", 140)); }
		float Min() { mixin(MGPC("float", 136)); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
