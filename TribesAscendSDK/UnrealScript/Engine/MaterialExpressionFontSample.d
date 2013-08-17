module UnrealScript.Engine.MaterialExpressionFontSample;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;
import UnrealScript.Engine.Font;

extern(C++) interface MaterialExpressionFontSample : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionFontSample")()); }
	private static __gshared MaterialExpressionFontSample mDefaultProperties;
	@property final static MaterialExpressionFontSample DefaultProperties() { mixin(MGDPC!(MaterialExpressionFontSample, "MaterialExpressionFontSample Engine.Default__MaterialExpressionFontSample")()); }
	@property final auto ref
	{
		int FontTexturePage() { mixin(MGPC!("int", 112)()); }
		// WARNING: Property 'Font' has the same name as a defined type!
	}
}
