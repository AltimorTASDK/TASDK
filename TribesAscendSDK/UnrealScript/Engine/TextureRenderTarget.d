module UnrealScript.Engine.TextureRenderTarget;

import ScriptClasses;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTarget : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TextureRenderTarget")); }
	private static __gshared TextureRenderTarget mDefaultProperties;
	@property final static TextureRenderTarget DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextureRenderTarget)("TextureRenderTarget Engine.Default__TextureRenderTarget")); }
	@property final
	{
		@property final auto ref float TargetGamma() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		bool bRenderOnce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
		bool bRenderOnce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
		bool bNeedsTwoCopies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bNeedsTwoCopies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bUpdateImmediate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bUpdateImmediate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
}
