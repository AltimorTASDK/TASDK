module UnrealScript.Engine.MaterialExpressionSphereMask;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSphereMask : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionSphereMask")); }
	private static __gshared MaterialExpressionSphereMask mDefaultProperties;
	@property final static MaterialExpressionSphereMask DefaultProperties() { mixin(MGDPC("MaterialExpressionSphereMask", "MaterialExpressionSphereMask Engine.Default__MaterialExpressionSphereMask")); }
	@property final auto ref
	{
		float HardnessPercent() { mixin(MGPC("float", 168)); }
		float AttenuationRadius() { mixin(MGPC("float", 164)); }
		MaterialExpression.ExpressionInput B() { mixin(MGPC("MaterialExpression.ExpressionInput", 136)); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
	}
}
