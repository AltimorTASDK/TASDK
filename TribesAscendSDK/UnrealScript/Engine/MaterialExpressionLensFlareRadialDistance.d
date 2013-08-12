module UnrealScript.Engine.MaterialExpressionLensFlareRadialDistance;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareRadialDistance : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionLensFlareRadialDistance")); }
	private static __gshared MaterialExpressionLensFlareRadialDistance mDefaultProperties;
	@property final static MaterialExpressionLensFlareRadialDistance DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionLensFlareRadialDistance)("MaterialExpressionLensFlareRadialDistance Engine.Default__MaterialExpressionLensFlareRadialDistance")); }
}
