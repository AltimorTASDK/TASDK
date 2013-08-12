module UnrealScript.Engine.MaterialExpressionMeshSubUV;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSample;

extern(C++) interface MaterialExpressionMeshSubUV : MaterialExpressionTextureSample
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionMeshSubUV")); }
	private static __gshared MaterialExpressionMeshSubUV mDefaultProperties;
	@property final static MaterialExpressionMeshSubUV DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionMeshSubUV)("MaterialExpressionMeshSubUV Engine.Default__MaterialExpressionMeshSubUV")); }
}
