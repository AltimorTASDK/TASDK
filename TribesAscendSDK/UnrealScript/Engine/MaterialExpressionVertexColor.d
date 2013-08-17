module UnrealScript.Engine.MaterialExpressionVertexColor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionVertexColor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionVertexColor")()); }
	private static __gshared MaterialExpressionVertexColor mDefaultProperties;
	@property final static MaterialExpressionVertexColor DefaultProperties() { mixin(MGDPC!(MaterialExpressionVertexColor, "MaterialExpressionVertexColor Engine.Default__MaterialExpressionVertexColor")()); }
}
