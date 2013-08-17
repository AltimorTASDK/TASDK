module UnrealScript.Engine.SoundNodeWaveStreaming;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface SoundNodeWaveStreaming : SoundNodeWave
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeWaveStreaming")()); }
	private static __gshared SoundNodeWaveStreaming mDefaultProperties;
	@property final static SoundNodeWaveStreaming DefaultProperties() { mixin(MGDPC!(SoundNodeWaveStreaming, "SoundNodeWaveStreaming Engine.Default__SoundNodeWaveStreaming")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mQueueAudio;
			ScriptFunction mResetAudio;
			ScriptFunction mAvailableAudioBytes;
			ScriptFunction mGeneratePCMData;
		}
		public @property static final
		{
			ScriptFunction QueueAudio() { mixin(MGF!("mQueueAudio", "Function Engine.SoundNodeWaveStreaming.QueueAudio")()); }
			ScriptFunction ResetAudio() { mixin(MGF!("mResetAudio", "Function Engine.SoundNodeWaveStreaming.ResetAudio")()); }
			ScriptFunction AvailableAudioBytes() { mixin(MGF!("mAvailableAudioBytes", "Function Engine.SoundNodeWaveStreaming.AvailableAudioBytes")()); }
			ScriptFunction GeneratePCMData() { mixin(MGF!("mGeneratePCMData", "Function Engine.SoundNodeWaveStreaming.GeneratePCMData")()); }
		}
	}
	@property final auto ref ScriptArray!(ubyte) QueuedAudio() { mixin(MGPC!("ScriptArray!(ubyte)", 436)()); }
final:
	void QueueAudio(ScriptArray!(ubyte) Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueueAudio, params.ptr, cast(void*)0);
	}
	void ResetAudio()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetAudio, cast(void*)0, cast(void*)0);
	}
	int AvailableAudioBytes()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AvailableAudioBytes, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void GeneratePCMData(ref ScriptArray!(ubyte) Buffer, int SamplesNeeded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = Buffer;
		*cast(int*)&params[12] = SamplesNeeded;
		(cast(ScriptObject)this).ProcessEvent(Functions.GeneratePCMData, params.ptr, cast(void*)0);
		Buffer = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
