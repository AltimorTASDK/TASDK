module UnrealScript.Engine.MaterialExpressionFrac;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFrac : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFrac")); }
	private static __gshared MaterialExpressionFrac mDefaultProperties;
	@property final static MaterialExpressionFrac DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionFrac)("MaterialExpressionFrac Engine.Default__MaterialExpressionFrac")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
