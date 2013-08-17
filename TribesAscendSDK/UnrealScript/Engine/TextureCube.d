module UnrealScript.Engine.TextureCube;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureCube : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TextureCube")()); }
	private static __gshared TextureCube mDefaultProperties;
	@property final static TextureCube DefaultProperties() { mixin(MGDPC!(TextureCube, "TextureCube Engine.Default__TextureCube")()); }
	@property final
	{
		auto ref
		{
			Texture2D FaceNegZ() { mixin(MGPC!("Texture2D", 276)()); }
			Texture2D FacePosZ() { mixin(MGPC!("Texture2D", 272)()); }
			Texture2D FaceNegY() { mixin(MGPC!("Texture2D", 268)()); }
			Texture2D FacePosY() { mixin(MGPC!("Texture2D", 264)()); }
			Texture2D FaceNegX() { mixin(MGPC!("Texture2D", 260)()); }
			Texture2D FacePosX() { mixin(MGPC!("Texture2D", 256)()); }
			int NumMips() { mixin(MGPC!("int", 248)()); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int SizeY() { mixin(MGPC!("int", 240)()); }
			int SizeX() { mixin(MGPC!("int", 236)()); }
		}
		bool bIsCubemapValid() { mixin(MGBPC!(252, 0x1)()); }
		bool bIsCubemapValid(bool val) { mixin(MSBPC!(252, 0x1)()); }
	}
}
