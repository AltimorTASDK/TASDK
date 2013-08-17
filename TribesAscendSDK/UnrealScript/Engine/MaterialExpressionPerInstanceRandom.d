module UnrealScript.Engine.MaterialExpressionPerInstanceRandom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPerInstanceRandom : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionPerInstanceRandom")()); }
	private static __gshared MaterialExpressionPerInstanceRandom mDefaultProperties;
	@property final static MaterialExpressionPerInstanceRandom DefaultProperties() { mixin(MGDPC!(MaterialExpressionPerInstanceRandom, "MaterialExpressionPerInstanceRandom Engine.Default__MaterialExpressionPerInstanceRandom")()); }
}
