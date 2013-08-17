module UnrealScript.Engine.MaterialExpressionFoliageNormalizedRotationAxisAndAngle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFoliageNormalizedRotationAxisAndAngle : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionFoliageNormalizedRotationAxisAndAngle")()); }
	private static __gshared MaterialExpressionFoliageNormalizedRotationAxisAndAngle mDefaultProperties;
	@property final static MaterialExpressionFoliageNormalizedRotationAxisAndAngle DefaultProperties() { mixin(MGDPC!(MaterialExpressionFoliageNormalizedRotationAxisAndAngle, "MaterialExpressionFoliageNormalizedRotationAxisAndAngle Engine.Default__MaterialExpressionFoliageNormalizedRotationAxisAndAngle")()); }
}
