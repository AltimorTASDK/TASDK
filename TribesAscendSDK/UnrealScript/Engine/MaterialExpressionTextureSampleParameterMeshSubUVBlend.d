module UnrealScript.Engine.MaterialExpressionTextureSampleParameterMeshSubUVBlend;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameterMeshSubUV;

extern(C++) interface MaterialExpressionTextureSampleParameterMeshSubUVBlend : MaterialExpressionTextureSampleParameterMeshSubUV
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureSampleParameterMeshSubUVBlend")); }
	private static __gshared MaterialExpressionTextureSampleParameterMeshSubUVBlend mDefaultProperties;
	@property final static MaterialExpressionTextureSampleParameterMeshSubUVBlend DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionTextureSampleParameterMeshSubUVBlend)("MaterialExpressionTextureSampleParameterMeshSubUVBlend Engine.Default__MaterialExpressionTextureSampleParameterMeshSubUVBlend")); }
}
