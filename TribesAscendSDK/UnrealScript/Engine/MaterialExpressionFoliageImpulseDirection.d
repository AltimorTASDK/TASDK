module UnrealScript.Engine.MaterialExpressionFoliageImpulseDirection;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFoliageImpulseDirection : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFoliageImpulseDirection")); }
	private static __gshared MaterialExpressionFoliageImpulseDirection mDefaultProperties;
	@property final static MaterialExpressionFoliageImpulseDirection DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionFoliageImpulseDirection)("MaterialExpressionFoliageImpulseDirection Engine.Default__MaterialExpressionFoliageImpulseDirection")); }
}
