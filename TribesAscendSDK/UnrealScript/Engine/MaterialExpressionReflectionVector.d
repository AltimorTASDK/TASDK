module UnrealScript.Engine.MaterialExpressionReflectionVector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionReflectionVector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionReflectionVector")); }
	private static __gshared MaterialExpressionReflectionVector mDefaultProperties;
	@property final static MaterialExpressionReflectionVector DefaultProperties() { mixin(MGDPC("MaterialExpressionReflectionVector", "MaterialExpressionReflectionVector Engine.Default__MaterialExpressionReflectionVector")); }
}
