module UnrealScript.Engine.MaterialExpressionFloor;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFloor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFloor")); }
	private static __gshared MaterialExpressionFloor mDefaultProperties;
	@property final static MaterialExpressionFloor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionFloor)("MaterialExpressionFloor Engine.Default__MaterialExpressionFloor")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
