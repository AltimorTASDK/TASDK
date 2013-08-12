module UnrealScript.Engine.MaterialExpressionTextureSampleParameterCube;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameterCube : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameterCube")); }
	private static __gshared MaterialExpressionTextureSampleParameterCube mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterCube DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionTextureSampleParameterCube)("MaterialExpressionTextureSampleParameterCube Engine.Default__MaterialExpressionTextureSampleParameterCube")); }
}
