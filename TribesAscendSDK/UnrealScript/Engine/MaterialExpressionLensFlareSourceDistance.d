module UnrealScript.Engine.MaterialExpressionLensFlareSourceDistance;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareSourceDistance : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionLensFlareSourceDistance")); }
	private static __gshared MaterialExpressionLensFlareSourceDistance mDefaultProperties;
	@property final static MaterialExpressionLensFlareSourceDistance DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionLensFlareSourceDistance)("MaterialExpressionLensFlareSourceDistance Engine.Default__MaterialExpressionLensFlareSourceDistance")); }
}
