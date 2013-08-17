module UnrealScript.Engine.MaterialExpressionWindDirectionAndSpeed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionWindDirectionAndSpeed : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionWindDirectionAndSpeed")); }
	private static __gshared MaterialExpressionWindDirectionAndSpeed mDefaultProperties;
	@property final static MaterialExpressionWindDirectionAndSpeed DefaultProperties() { mixin(MGDPC("MaterialExpressionWindDirectionAndSpeed", "MaterialExpressionWindDirectionAndSpeed Engine.Default__MaterialExpressionWindDirectionAndSpeed")); }
}
