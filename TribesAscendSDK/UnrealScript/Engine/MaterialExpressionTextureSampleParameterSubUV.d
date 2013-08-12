module UnrealScript.Engine.MaterialExpressionTextureSampleParameterSubUV;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter2D;

extern(C++) interface MaterialExpressionTextureSampleParameterSubUV : MaterialExpressionTextureSampleParameter2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameterSubUV")); }
}
