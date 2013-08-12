module UnrealScript.Engine.TextureCube;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureCube : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TextureCube")); }
	@property final
	{
		auto ref
		{
			Texture2D FaceNegZ() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 276); }
			Texture2D FacePosZ() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 272); }
			Texture2D FaceNegY() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 268); }
			Texture2D FacePosY() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 264); }
			Texture2D FaceNegX() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 260); }
			Texture2D FacePosX() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 256); }
			int NumMips() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
			int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bIsCubemapValid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
		bool bIsCubemapValid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	}
}
