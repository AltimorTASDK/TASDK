module UnrealScript.Engine.MaterialExpressionFlipBookSample;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSample;

extern(C++) interface MaterialExpressionFlipBookSample : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionFlipBookSample")()); }
	private static __gshared MaterialExpressionFlipBookSample mDefaultProperties;
	@property final static MaterialExpressionFlipBookSample DefaultProperties() { mixin(MGDPC!(MaterialExpressionFlipBookSample, "MaterialExpressionFlipBookSample Engine.Default__MaterialExpressionFlipBookSample")()); }
}
