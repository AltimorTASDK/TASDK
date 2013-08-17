module UnrealScript.Engine.MaterialExpressionDesaturation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDesaturation : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDesaturation")()); }
	private static __gshared MaterialExpressionDesaturation mDefaultProperties;
	@property final static MaterialExpressionDesaturation DefaultProperties() { mixin(MGDPC!(MaterialExpressionDesaturation, "MaterialExpressionDesaturation Engine.Default__MaterialExpressionDesaturation")()); }
	@property final auto ref
	{
		UObject.LinearColor LuminanceFactors() { mixin(MGPC!(UObject.LinearColor, 164)()); }
		MaterialExpression.ExpressionInput Percent() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
