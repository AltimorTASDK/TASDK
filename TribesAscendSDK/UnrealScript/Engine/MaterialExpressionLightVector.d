module UnrealScript.Engine.MaterialExpressionLightVector;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLightVector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionLightVector")); }
	private static __gshared MaterialExpressionLightVector mDefaultProperties;
	@property final static MaterialExpressionLightVector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionLightVector)("MaterialExpressionLightVector Engine.Default__MaterialExpressionLightVector")); }
}
