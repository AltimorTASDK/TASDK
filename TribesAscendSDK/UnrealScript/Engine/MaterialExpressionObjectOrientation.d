module UnrealScript.Engine.MaterialExpressionObjectOrientation;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionObjectOrientation : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionObjectOrientation")); }
	private static __gshared MaterialExpressionObjectOrientation mDefaultProperties;
	@property final static MaterialExpressionObjectOrientation DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionObjectOrientation)("MaterialExpressionObjectOrientation Engine.Default__MaterialExpressionObjectOrientation")); }
}
