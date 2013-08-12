module UnrealScript.Engine.SoundNodeWave;

import ScriptClasses;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface SoundNodeWave : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeWave")); }
	private static __gshared SoundNodeWave mDefaultProperties;
	@property final static SoundNodeWave DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeWave)("SoundNodeWave Engine.Default__SoundNodeWave")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGeneratePCMData;
		public @property static final ScriptFunction GeneratePCMData() { return mGeneratePCMData ? mGeneratePCMData : (mGeneratePCMData = ScriptObject.Find!(ScriptFunction)("Function Engine.SoundNodeWave.GeneratePCMData")); }
	}
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
	@property final
	{
		auto ref
		{
			ScriptArray!(int) ChannelOffsets() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(int) ChannelSizes() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(EngineTypes.SubtitleCue) Subtitles() { return *cast(ScriptArray!(EngineTypes.SubtitleCue)*)(cast(size_t)cast(void*)this + 376); }
			ScriptArray!(EngineTypes.LocalizedSubtitle) LocalizedSubtitles() { return *cast(ScriptArray!(EngineTypes.LocalizedSubtitle)*)(cast(size_t)cast(void*)this + 400); }
			ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 424); }
			ScriptString SourceFilePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
			ScriptString Comment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
			UObject.Pointer ResourceData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 372); }
			int ResourceSize() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int ResourceID() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			UObject.UntypedBulkData_Mirror CompressedPS3Data() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 312); }
			UObject.UntypedBulkData_Mirror CompressedXbox360Data() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 260); }
			UObject.UntypedBulkData_Mirror CompressedPCData() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 208); }
			int RawPCMDataSize() { return *cast(int*)(cast(size_t)cast(void*)this + 204); }
			UObject.Pointer RawPCMData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 200); }
			UObject.Pointer VorbisDecompressor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 196); }
			UObject.UntypedBulkData_Mirror RawData() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 144); }
			int SampleRate() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
			int NumChannels() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float Pitch() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			// WARNING: Property 'Volume' has the same name as a defined type!
			ScriptString SpokenText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 88); }
			SoundNodeWave.EDecompressionType DecompressionType() { return *cast(SoundNodeWave.EDecompressionType*)(cast(size_t)cast(void*)this + 85); }
			AudioDevice.ETTSSpeaker TTSSpeaker() { return *cast(AudioDevice.ETTSSpeaker*)(cast(size_t)cast(void*)this + 84); }
			int CompressionQuality() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bManualWordWrap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x40) != 0; }
		bool bManualWordWrap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x40; } return val; }
		bool bMature() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x20) != 0; }
		bool bMature(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x20; } return val; }
		bool bProcedural() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x10) != 0; }
		bool bProcedural(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x10; } return val; }
		bool bUseTTS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x8) != 0; }
		bool bUseTTS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x8; } return val; }
		bool bDynamicResource() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x4) != 0; }
		bool bDynamicResource(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x4; } return val; }
		bool bLoopingSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x2) != 0; }
		bool bLoopingSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x2; } return val; }
		bool bForceRealTimeDecompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x1) != 0; }
		bool bForceRealTimeDecompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x1; } return val; }
	}
	final void GeneratePCMData(ScriptArray!(ubyte)* Buffer, int SamplesNeeded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *Buffer;
		*cast(int*)&params[12] = SamplesNeeded;
		(cast(ScriptObject)this).ProcessEvent(Functions.GeneratePCMData, params.ptr, cast(void*)0);
		*Buffer = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
