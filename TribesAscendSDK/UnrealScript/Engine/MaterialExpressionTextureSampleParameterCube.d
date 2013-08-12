module UnrealScript.Engine.MaterialExpressionTextureSampleParameterCube;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameterCube : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameterCube")); }
}
