module UnrealScript.Engine.MaterialExpressionTextureSampleParameter2D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameter2D : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTextureSampleParameter2D")()); }
	private static __gshared MaterialExpressionTextureSampleParameter2D mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameter2D DefaultProperties() { mixin(MGDPC!(MaterialExpressionTextureSampleParameter2D, "MaterialExpressionTextureSampleParameter2D Engine.Default__MaterialExpressionTextureSampleParameter2D")()); }
}
