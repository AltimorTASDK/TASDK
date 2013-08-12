module UnrealScript.Engine.MaterialExpressionCeil;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCeil : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionCeil")); }
	private static __gshared MaterialExpressionCeil mDefaultProperties;
	@property final static MaterialExpressionCeil DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionCeil)("MaterialExpressionCeil Engine.Default__MaterialExpressionCeil")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
