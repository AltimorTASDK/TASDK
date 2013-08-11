module UnrealScript.Engine.ScriptedTexture;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Canvas;

extern(C++) interface ScriptedTexture : TextureRenderTarget2D
{
public extern(D):
	@property final
	{
		bool bSkipNextClear() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2) != 0; }
		bool bSkipNextClear(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2; } return val; }
		bool bNeedsUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
		bool bNeedsUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
	}
	final void Render(Canvas C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25527], params.ptr, cast(void*)0);
	}
}
