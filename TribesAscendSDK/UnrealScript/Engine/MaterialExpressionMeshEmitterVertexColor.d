module UnrealScript.Engine.MaterialExpressionMeshEmitterVertexColor;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionMeshEmitterVertexColor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionMeshEmitterVertexColor")); }
	private static __gshared MaterialExpressionMeshEmitterVertexColor mDefaultProperties;
	@property final static MaterialExpressionMeshEmitterVertexColor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionMeshEmitterVertexColor)("MaterialExpressionMeshEmitterVertexColor Engine.Default__MaterialExpressionMeshEmitterVertexColor")); }
}
