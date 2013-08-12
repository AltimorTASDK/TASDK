module UnrealScript.Engine.MaterialExpressionCameraVector;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCameraVector : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionCameraVector")); }
	private static __gshared MaterialExpressionCameraVector mDefaultProperties;
	@property final static MaterialExpressionCameraVector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionCameraVector)("MaterialExpressionCameraVector Engine.Default__MaterialExpressionCameraVector")); }
}
