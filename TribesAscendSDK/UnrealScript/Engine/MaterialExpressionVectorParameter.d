module UnrealScript.Engine.MaterialExpressionVectorParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;

extern(C++) interface MaterialExpressionVectorParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionVectorParameter")()); }
	private static __gshared MaterialExpressionVectorParameter mDefaultProperties;
	@property final static MaterialExpressionVectorParameter DefaultProperties() { mixin(MGDPC!(MaterialExpressionVectorParameter, "MaterialExpressionVectorParameter Engine.Default__MaterialExpressionVectorParameter")()); }
	@property final auto ref UObject.LinearColor DefaultValue() { mixin(MGPC!("UObject.LinearColor", 132)()); }
}
