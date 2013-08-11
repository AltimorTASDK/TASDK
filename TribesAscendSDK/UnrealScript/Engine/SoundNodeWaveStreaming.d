module UnrealScript.Engine.SoundNodeWaveStreaming;

import ScriptClasses;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface SoundNodeWaveStreaming : SoundNodeWave
{
	public @property final auto ref ScriptArray!(ubyte) QueuedAudio() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 436); }
	final void QueueAudio(ScriptArray!(ubyte) Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26982], params.ptr, cast(void*)0);
	}
	final void ResetAudio()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26985], cast(void*)0, cast(void*)0);
	}
	final int AvailableAudioBytes()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26986], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void GeneratePCMData(ScriptArray!(ubyte)* Buffer, int SamplesNeeded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Buffer;
		*cast(int*)&params[12] = SamplesNeeded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26988], params.ptr, cast(void*)0);
		*Buffer = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
