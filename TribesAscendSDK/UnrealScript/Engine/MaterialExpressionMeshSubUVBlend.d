module UnrealScript.Engine.MaterialExpressionMeshSubUVBlend;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionMeshSubUV;

extern(C++) interface MaterialExpressionMeshSubUVBlend : MaterialExpressionMeshSubUV
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionMeshSubUVBlend")); }
}
