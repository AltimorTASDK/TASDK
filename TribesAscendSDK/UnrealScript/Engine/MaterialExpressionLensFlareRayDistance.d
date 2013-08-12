module UnrealScript.Engine.MaterialExpressionLensFlareRayDistance;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLensFlareRayDistance : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionLensFlareRayDistance")); }
	private static __gshared MaterialExpressionLensFlareRayDistance mDefaultProperties;
	@property final static MaterialExpressionLensFlareRayDistance DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionLensFlareRayDistance)("MaterialExpressionLensFlareRayDistance Engine.Default__MaterialExpressionLensFlareRayDistance")); }
}
