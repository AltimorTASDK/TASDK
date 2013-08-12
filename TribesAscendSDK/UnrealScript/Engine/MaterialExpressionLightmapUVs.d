module UnrealScript.Engine.MaterialExpressionLightmapUVs;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLightmapUVs : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionLightmapUVs")); }
	private static __gshared MaterialExpressionLightmapUVs mDefaultProperties;
	@property final static MaterialExpressionLightmapUVs DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionLightmapUVs)("MaterialExpressionLightmapUVs Engine.Default__MaterialExpressionLightmapUVs")); }
}
