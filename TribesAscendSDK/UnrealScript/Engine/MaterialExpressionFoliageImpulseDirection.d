module UnrealScript.Engine.MaterialExpressionFoliageImpulseDirection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFoliageImpulseDirection : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionFoliageImpulseDirection")()); }
	private static __gshared MaterialExpressionFoliageImpulseDirection mDefaultProperties;
	@property final static MaterialExpressionFoliageImpulseDirection DefaultProperties() { mixin(MGDPC!(MaterialExpressionFoliageImpulseDirection, "MaterialExpressionFoliageImpulseDirection Engine.Default__MaterialExpressionFoliageImpulseDirection")()); }
}
