module UnrealScript.Engine.MaterialExpressionTextureSampleParameter2D;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter;

extern(C++) interface MaterialExpressionTextureSampleParameter2D : MaterialExpressionTextureSampleParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameter2D")); }
	private static __gshared MaterialExpressionTextureSampleParameter2D mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameter2D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionTextureSampleParameter2D)("MaterialExpressionTextureSampleParameter2D Engine.Default__MaterialExpressionTextureSampleParameter2D")); }
}
