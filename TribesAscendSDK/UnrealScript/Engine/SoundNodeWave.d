module UnrealScript.Engine.SoundNodeWave;

import ScriptClasses;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface SoundNodeWave : SoundNode
{
	enum EDecompressionType : ubyte
	{
		DTYPE_Setup = 0,
		DTYPE_Invalid = 1,
		DTYPE_Preview = 2,
		DTYPE_Native = 3,
		DTYPE_RealTime = 4,
		DTYPE_Procedural = 5,
		DTYPE_Xenon = 6,
		DTYPE_MAX = 7,
	}
	public @property final auto ref ScriptArray!(int) ChannelOffsets() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(int) ChannelSizes() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(EngineTypes.SubtitleCue) Subtitles() { return *cast(ScriptArray!(EngineTypes.SubtitleCue)*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref ScriptArray!(EngineTypes.LocalizedSubtitle) LocalizedSubtitles() { return *cast(ScriptArray!(EngineTypes.LocalizedSubtitle)*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref ScriptString SourceFilePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref ScriptString Comment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref UObject.Pointer ResourceData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int ResourceSize() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int ResourceID() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref UObject.UntypedBulkData_Mirror CompressedPS3Data() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref UObject.UntypedBulkData_Mirror CompressedXbox360Data() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref UObject.UntypedBulkData_Mirror CompressedPCData() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref int RawPCMDataSize() { return *cast(int*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref UObject.Pointer RawPCMData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref UObject.Pointer VorbisDecompressor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref UObject.UntypedBulkData_Mirror RawData() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int SampleRate() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int NumChannels() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float Pitch() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	// WARNING: Property 'Volume' has the same name as a defined type!
	public @property final auto ref ScriptString SpokenText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref SoundNodeWave.EDecompressionType DecompressionType() { return *cast(SoundNodeWave.EDecompressionType*)(cast(size_t)cast(void*)this + 85); }
	public @property final auto ref AudioDevice.ETTSSpeaker TTSSpeaker() { return *cast(AudioDevice.ETTSSpeaker*)(cast(size_t)cast(void*)this + 84); }
	public @property final bool bManualWordWrap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x40) != 0; }
	public @property final bool bManualWordWrap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x40; } return val; }
	public @property final bool bMature() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x20) != 0; }
	public @property final bool bMature(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x20; } return val; }
	public @property final bool bProcedural() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x10) != 0; }
	public @property final bool bProcedural(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x10; } return val; }
	public @property final bool bUseTTS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x8) != 0; }
	public @property final bool bUseTTS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x8; } return val; }
	public @property final bool bDynamicResource() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x4) != 0; }
	public @property final bool bDynamicResource(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x4; } return val; }
	public @property final bool bLoopingSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x2) != 0; }
	public @property final bool bLoopingSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x2; } return val; }
	public @property final bool bForceRealTimeDecompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x1) != 0; }
	public @property final bool bForceRealTimeDecompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x1; } return val; }
	public @property final auto ref int CompressionQuality() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	final void GeneratePCMData(ScriptArray!(ubyte)* Buffer, int SamplesNeeded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Buffer;
		*cast(int*)&params[12] = SamplesNeeded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26975], params.ptr, cast(void*)0);
		*Buffer = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
