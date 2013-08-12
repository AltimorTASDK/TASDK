module UnrealScript.Engine.MaterialExpressionAntialiasedTextureMask;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter2D;

extern(C++) interface MaterialExpressionAntialiasedTextureMask : MaterialExpressionTextureSampleParameter2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionAntialiasedTextureMask")); }
	enum ETextureColorChannel : ubyte
	{
		TCC_Red = 0,
		TCC_Green = 1,
		TCC_Blue = 2,
		TCC_Alpha = 3,
		TCC_MAX = 4,
	}
	@property final auto ref
	{
		// WARNING: Property 'Channel' has the same name as a defined type!
		float Threshold() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	}
}
