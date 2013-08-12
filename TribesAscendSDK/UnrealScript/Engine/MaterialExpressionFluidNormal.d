module UnrealScript.Engine.MaterialExpressionFluidNormal;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFluidNormal : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFluidNormal")); }
	private static __gshared MaterialExpressionFluidNormal mDefaultProperties;
	@property final static MaterialExpressionFluidNormal DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionFluidNormal)("MaterialExpressionFluidNormal Engine.Default__MaterialExpressionFluidNormal")); }
}
