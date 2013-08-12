module UnrealScript.Engine.MaterialExpressionVertexColor;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionVertexColor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionVertexColor")); }
	private static __gshared MaterialExpressionVertexColor mDefaultProperties;
	@property final static MaterialExpressionVertexColor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionVertexColor)("MaterialExpressionVertexColor Engine.Default__MaterialExpressionVertexColor")); }
}
