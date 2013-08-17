module UnrealScript.Engine.MaterialExpressionFontSampleParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionFontSample;
import UnrealScript.Core.UObject;

extern(C++) interface MaterialExpressionFontSampleParameter : MaterialExpressionFontSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionFontSampleParameter")()); }
	private static __gshared MaterialExpressionFontSampleParameter mDefaultProperties;
	@property final static MaterialExpressionFontSampleParameter DefaultProperties() { mixin(MGDPC!(MaterialExpressionFontSampleParameter, "MaterialExpressionFontSampleParameter Engine.Default__MaterialExpressionFontSampleParameter")()); }
	@property final auto ref
	{
		UObject.Guid ExpressionGUID() { mixin(MGPC!(UObject.Guid, 124)()); }
		ScriptName ParameterName() { mixin(MGPC!(ScriptName, 116)()); }
	}
}
