module UnrealScript.Engine.MaterialExpressionFluidNormal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFluidNormal : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionFluidNormal")); }
	private static __gshared MaterialExpressionFluidNormal mDefaultProperties;
	@property final static MaterialExpressionFluidNormal DefaultProperties() { mixin(MGDPC("MaterialExpressionFluidNormal", "MaterialExpressionFluidNormal Engine.Default__MaterialExpressionFluidNormal")); }
}
