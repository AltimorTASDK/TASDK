module UnrealScript.Engine.TextureMovie;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CodecMovie;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureMovie : Texture
{
	enum EMovieStreamSource : ubyte
	{
		MovieStream_File = 0,
		MovieStream_Memory = 1,
		MovieStream_MAX = 2,
	}
	public @property final auto ref UObject.Pointer ReleaseCodecFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref UObject.UntypedBulkData_Mirror Data() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 260); }
	public @property final bool AutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x8) != 0; }
	public @property final bool AutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x8; } return val; }
	public @property final bool Looping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x4) != 0; }
	public @property final bool Looping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x4; } return val; }
	public @property final bool Stopped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x2) != 0; }
	public @property final bool Stopped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x2; } return val; }
	public @property final bool Paused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
	public @property final bool Paused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	public @property final auto ref CodecMovie Decoder() { return *cast(CodecMovie*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptClass DecoderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 248); }
	// WARNING: Property 'MovieStreamSource' has the same name as a defined type!
	public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref Texture.TextureAddress AddressY() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 246); }
	public @property final auto ref Texture.TextureAddress AddressX() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 245); }
	// WARNING: Property 'Format' has the same name as a defined type!
	public @property final auto ref int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
	final void Play()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28005], cast(void*)0, cast(void*)0);
	}
	final void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28006], cast(void*)0, cast(void*)0);
	}
	final void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28007], cast(void*)0, cast(void*)0);
	}
}
