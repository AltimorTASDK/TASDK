module UnrealScript.Engine.MaterialExpressionTextureSample;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialExpressionTextureSample : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionTextureSample")); }
	private static __gshared MaterialExpressionTextureSample mDefaultProperties;
	@property final static MaterialExpressionTextureSample DefaultProperties() { mixin(MGDPC("MaterialExpressionTextureSample", "MaterialExpressionTextureSample Engine.Default__MaterialExpressionTextureSample")); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Coordinates() { mixin(MGPC("MaterialExpression.ExpressionInput", 112)); }
		// WARNING: Property 'Texture' has the same name as a defined type!
	}
}
