module UnrealScript.Engine.TextureRenderTargetCube;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTargetCube : TextureRenderTarget
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TextureRenderTargetCube")); }
	@property final auto ref
	{
		// WARNING: Property 'Format' has the same name as a defined type!
		int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
	}
}
