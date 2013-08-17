module UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionTextureSample;

extern(C++) interface MaterialExpressionTextureSampleParameter : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTextureSampleParameter")()); }
	private static __gshared MaterialExpressionTextureSampleParameter mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameter DefaultProperties() { mixin(MGDPC!(MaterialExpressionTextureSampleParameter, "MaterialExpressionTextureSampleParameter Engine.Default__MaterialExpressionTextureSampleParameter")()); }
	@property final auto ref
	{
		UObject.Guid ExpressionGUID() { mixin(MGPC!("UObject.Guid", 148)()); }
		ScriptName ParameterName() { mixin(MGPC!("ScriptName", 140)()); }
	}
}
