module UnrealScript.Engine.MaterialExpressionParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionParameter : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionParameter")()); }
	private static __gshared MaterialExpressionParameter mDefaultProperties;
	@property final static MaterialExpressionParameter DefaultProperties() { mixin(MGDPC!(MaterialExpressionParameter, "MaterialExpressionParameter Engine.Default__MaterialExpressionParameter")()); }
	@property final auto ref
	{
		UObject.Guid ExpressionGUID() { mixin(MGPC!("UObject.Guid", 116)()); }
		ScriptName ParameterName() { mixin(MGPC!("ScriptName", 108)()); }
	}
}
