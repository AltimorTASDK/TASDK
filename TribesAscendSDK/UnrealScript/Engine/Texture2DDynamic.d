module UnrealScript.Engine.Texture2DDynamic;

import ScriptClasses;
import UnrealScript.Engine.Texture;

extern(C++) interface Texture2DDynamic : Texture
{
public extern(D):
	@property final
	{
		auto ref
		{
			int NumMips() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
			int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bIsResolveTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
		bool bIsResolveTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	}
final:
	void Init(int InSizeX, int InSizeY, Texture.EPixelFormat InFormat, bool InIsResolveTarget)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		*cast(Texture.EPixelFormat*)&params[8] = InFormat;
		*cast(bool*)&params[12] = InIsResolveTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27953], params.ptr, cast(void*)0);
	}
	Texture2DDynamic Create(int InSizeX, int InSizeY, Texture.EPixelFormat InFormat, bool InIsResolveTarget)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		*cast(Texture.EPixelFormat*)&params[8] = InFormat;
		*cast(bool*)&params[12] = InIsResolveTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27958], params.ptr, cast(void*)0);
		return *cast(Texture2DDynamic*)&params[16];
	}
}
