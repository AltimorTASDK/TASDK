module UnrealScript.Engine.MaterialExpressionDynamicParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDynamicParameter : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionDynamicParameter")); }
	private static __gshared MaterialExpressionDynamicParameter mDefaultProperties;
	@property final static MaterialExpressionDynamicParameter DefaultProperties() { mixin(MGDPC("MaterialExpressionDynamicParameter", "MaterialExpressionDynamicParameter Engine.Default__MaterialExpressionDynamicParameter")); }
	@property final auto ref ScriptArray!(ScriptString) ParamNames() { mixin(MGPC("ScriptArray!(ScriptString)", 108)); }
}
