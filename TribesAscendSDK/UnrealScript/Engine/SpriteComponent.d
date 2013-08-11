module UnrealScript.Engine.SpriteComponent;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface SpriteComponent : PrimitiveComponent
{
	public @property final auto ref float VL() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float V() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float UL() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float U() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float ScreenSize() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final bool bIsScreenSizeScaled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
	public @property final bool bIsScreenSizeScaled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	public @property final auto ref Texture2D Sprite() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 488); }
	final void SetSprite(Texture2D NewSprite)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Texture2D*)params.ptr = NewSprite;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5156], params.ptr, cast(void*)0);
	}
	final void SetUV(int NewU, int NewUL, int NewV, int NewVL)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = NewU;
		*cast(int*)&params[4] = NewUL;
		*cast(int*)&params[8] = NewV;
		*cast(int*)&params[12] = NewVL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5158], params.ptr, cast(void*)0);
	}
	final void SetSpriteAndUV(Texture2D NewSprite, int NewU, int NewUL, int NewV, int NewVL)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Texture2D*)params.ptr = NewSprite;
		*cast(int*)&params[4] = NewU;
		*cast(int*)&params[8] = NewUL;
		*cast(int*)&params[12] = NewV;
		*cast(int*)&params[16] = NewVL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5163], params.ptr, cast(void*)0);
	}
}
