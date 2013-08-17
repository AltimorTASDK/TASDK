module UnrealScript.Engine.MaterialExpressionLightVector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLightVector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionLightVector")()); }
	private static __gshared MaterialExpressionLightVector mDefaultProperties;
	@property final static MaterialExpressionLightVector DefaultProperties() { mixin(MGDPC!(MaterialExpressionLightVector, "MaterialExpressionLightVector Engine.Default__MaterialExpressionLightVector")()); }
}
