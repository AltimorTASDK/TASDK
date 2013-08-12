module UnrealScript.Engine.MaterialExpressionPerInstanceRandom;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPerInstanceRandom : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionPerInstanceRandom")); }
	private static __gshared MaterialExpressionPerInstanceRandom mDefaultProperties;
	@property final static MaterialExpressionPerInstanceRandom DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionPerInstanceRandom)("MaterialExpressionPerInstanceRandom Engine.Default__MaterialExpressionPerInstanceRandom")); }
}
