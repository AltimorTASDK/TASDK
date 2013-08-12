module UnrealScript.Engine.MaterialExpressionTextureSampleParameterMovie;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameterMovie : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameterMovie")); }
	private static __gshared MaterialExpressionTextureSampleParameterMovie mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterMovie DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionTextureSampleParameterMovie)("MaterialExpressionTextureSampleParameterMovie Engine.Default__MaterialExpressionTextureSampleParameterMovie")); }
}
