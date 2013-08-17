module UnrealScript.Engine.MaterialExpressionMeshEmitterVertexColor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionMeshEmitterVertexColor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionMeshEmitterVertexColor")()); }
	private static __gshared MaterialExpressionMeshEmitterVertexColor mDefaultProperties;
	@property final static MaterialExpressionMeshEmitterVertexColor DefaultProperties() { mixin(MGDPC!(MaterialExpressionMeshEmitterVertexColor, "MaterialExpressionMeshEmitterVertexColor Engine.Default__MaterialExpressionMeshEmitterVertexColor")()); }
}
