module UnrealScript.Engine.MaterialExpressionLightmassReplace;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLightmassReplace : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionLightmassReplace")()); }
	private static __gshared MaterialExpressionLightmassReplace mDefaultProperties;
	@property final static MaterialExpressionLightmassReplace DefaultProperties() { mixin(MGDPC!(MaterialExpressionLightmassReplace, "MaterialExpressionLightmassReplace Engine.Default__MaterialExpressionLightmassReplace")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Lightmass() { mixin(MGPC!("MaterialExpression.ExpressionInput", 136)()); }
		MaterialExpression.ExpressionInput Realtime() { mixin(MGPC!("MaterialExpression.ExpressionInput", 108)()); }
	}
}
