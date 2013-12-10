module UnrealScript.Engine.TextureMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CodecMovie;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureMovie : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.TextureMovie")); }
	private static __gshared TextureMovie mDefaultProperties;
	@property final static TextureMovie DefaultProperties() { mixin(MGDPC("TextureMovie", "TextureMovie Engine.Default__TextureMovie")); }
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
			ScriptFunction Play() { mixin(MGF("mPlay", "Function Engine.TextureMovie.Play")); }
			ScriptFunction Pause() { mixin(MGF("mPause", "Function Engine.TextureMovie.Pause")); }
			ScriptFunction Stop() { mixin(MGF("mStop", "Function Engine.TextureMovie.Stop")); }
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
			Pointer ReleaseCodecFence() { mixin(MGPC("Pointer", 312)); }
			UObject.UntypedBulkData_Mirror Data() { mixin(MGPC("UObject.UntypedBulkData_Mirror", 260)); }
			CodecMovie Decoder() { mixin(MGPC("CodecMovie", 252)); }
			ScriptClass DecoderClass() { mixin(MGPC("ScriptClass", 248)); }
			TextureMovie.EMovieStreamSource MovieStreamSourceVar() { mixin(MGPC("TextureMovie.EMovieStreamSource", 247)); }
			int SizeX() { mixin(MGPC("int", 236)); }
			Texture.TextureAddress AddressY() { mixin(MGPC("Texture.TextureAddress", 246)); }
			Texture.TextureAddress AddressX() { mixin(MGPC("Texture.TextureAddress", 245)); }
			Texture.EPixelFormat FormatVar() { mixin(MGPC("Texture.EPixelFormat", 244)); }
			int SizeY() { mixin(MGPC("int", 240)); }
		}
		bool AutoPlay() { mixin(MGBPC(256, 0x8)); }
		bool AutoPlay(bool val) { mixin(MSBPC(256, 0x8)); }
		bool Looping() { mixin(MGBPC(256, 0x4)); }
		bool Looping(bool val) { mixin(MSBPC(256, 0x4)); }
		bool Stopped() { mixin(MGBPC(256, 0x2)); }
		bool Stopped(bool val) { mixin(MSBPC(256, 0x2)); }
		bool Paused() { mixin(MGBPC(256, 0x1)); }
		bool Paused(bool val) { mixin(MSBPC(256, 0x1)); }
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
