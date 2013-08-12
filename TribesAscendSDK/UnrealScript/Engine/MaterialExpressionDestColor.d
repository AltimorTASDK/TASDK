module UnrealScript.Engine.MaterialExpressionDestColor;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDestColor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionDestColor")); }
	private static __gshared MaterialExpressionDestColor mDefaultProperties;
	@property final static MaterialExpressionDestColor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionDestColor)("MaterialExpressionDestColor Engine.Default__MaterialExpressionDestColor")); }
}
