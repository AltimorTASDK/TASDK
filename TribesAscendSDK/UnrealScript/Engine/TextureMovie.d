module UnrealScript.Engine.TextureMovie;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CodecMovie;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureMovie : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TextureMovie")); }
	private static __gshared TextureMovie mDefaultProperties;
	@property final static TextureMovie DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextureMovie)("TextureMovie Engine.Default__TextureMovie")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlay;
			ScriptFunction mPause;
			ScriptFunction mStop;
		}
		public @property static final
		{
			ScriptFunction Play() { return mPlay ? mPlay : (mPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.TextureMovie.Play")); }
			ScriptFunction Pause() { return mPause ? mPause : (mPause = ScriptObject.Find!(ScriptFunction)("Function Engine.TextureMovie.Pause")); }
			ScriptFunction Stop() { return mStop ? mStop : (mStop = ScriptObject.Find!(ScriptFunction)("Function Engine.TextureMovie.Stop")); }
		}
	}
	enum EMovieStreamSource : ubyte
	{
		MovieStream_File = 0,
		MovieStream_Memory = 1,
		MovieStream_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			UObject.Pointer ReleaseCodecFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 312); }
			UObject.UntypedBulkData_Mirror Data() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 260); }
			CodecMovie Decoder() { return *cast(CodecMovie*)(cast(size_t)cast(void*)this + 252); }
			ScriptClass DecoderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 248); }
			// WARNING: Property 'MovieStreamSource' has the same name as a defined type!
			int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
			Texture.TextureAddress AddressY() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 246); }
			Texture.TextureAddress AddressX() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 245); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
		}
		bool AutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x8) != 0; }
		bool AutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x8; } return val; }
		bool Looping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x4) != 0; }
		bool Looping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x4; } return val; }
		bool Stopped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x2) != 0; }
		bool Stopped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x2; } return val; }
		bool Paused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
		bool Paused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	}
final:
	void Play()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Play, cast(void*)0, cast(void*)0);
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Pause, cast(void*)0, cast(void*)0);
	}
	void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Stop, cast(void*)0, cast(void*)0);
	}
}
