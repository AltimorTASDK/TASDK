module UnrealScript.Engine.MaterialExpressionCustomTexture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialExpressionCustomTexture : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionCustomTexture")()); }
	private static __gshared MaterialExpressionCustomTexture mDefaultProperties;
	@property final static MaterialExpressionCustomTexture DefaultProperties() { mixin(MGDPC!(MaterialExpressionCustomTexture, "MaterialExpressionCustomTexture Engine.Default__MaterialExpressionCustomTexture")()); }
	// WARNING: Property 'Texture' has the same name as a defined type!
}
