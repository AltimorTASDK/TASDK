module UnrealScript.Engine.MaterialExpressionConstantBiasScale;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstantBiasScale : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionConstantBiasScale")); }
	private static __gshared MaterialExpressionConstantBiasScale mDefaultProperties;
	@property final static MaterialExpressionConstantBiasScale DefaultProperties() { mixin(MGDPC("MaterialExpressionConstantBiasScale", "MaterialExpressionConstantBiasScale Engine.Default__MaterialExpressionConstantBiasScale")); }
	@property final auto ref
	{
		float Scale() { mixin(MGPC("float", 140)); }
		float Bias() { mixin(MGPC("float", 136)); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
