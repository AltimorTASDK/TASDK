module UnrealScript.Engine.MaterialExpressionAntialiasedTextureMask;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionTextureSampleParameter2D;

extern(C++) interface MaterialExpressionAntialiasedTextureMask : MaterialExpressionTextureSampleParameter2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionAntialiasedTextureMask")); }
	private static __gshared MaterialExpressionAntialiasedTextureMask mDefaultProperties;
	@property final static MaterialExpressionAntialiasedTextureMask DefaultProperties() { mixin(MGDPC("MaterialExpressionAntialiasedTextureMask", "MaterialExpressionAntialiasedTextureMask Engine.Default__MaterialExpressionAntialiasedTextureMask")); }
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
		float Threshold() { mixin(MGPC("float", 164)); }
	}
}
