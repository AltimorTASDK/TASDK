module UnrealScript.Engine.SoundNodeWave;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface SoundNodeWave : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeWave")()); }
	private static __gshared SoundNodeWave mDefaultProperties;
	@property final static SoundNodeWave DefaultProperties() { mixin(MGDPC!(SoundNodeWave, "SoundNodeWave Engine.Default__SoundNodeWave")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGeneratePCMData;
		public @property static final ScriptFunction GeneratePCMData() { mixin(MGF!("mGeneratePCMData", "Function Engine.SoundNodeWave.GeneratePCMData")()); }
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
			ScriptArray!(int) ChannelOffsets() { mixin(MGPC!(ScriptArray!(int), 120)()); }
			ScriptArray!(int) ChannelSizes() { mixin(MGPC!(ScriptArray!(int), 132)()); }
			ScriptArray!(EngineTypes.SubtitleCue) Subtitles() { mixin(MGPC!(ScriptArray!(EngineTypes.SubtitleCue), 376)()); }
			ScriptArray!(EngineTypes.LocalizedSubtitle) LocalizedSubtitles() { mixin(MGPC!(ScriptArray!(EngineTypes.LocalizedSubtitle), 400)()); }
			ScriptString SourceFileTimestamp() { mixin(MGPC!(ScriptString, 424)()); }
			ScriptString SourceFilePath() { mixin(MGPC!(ScriptString, 412)()); }
			ScriptString Comment() { mixin(MGPC!(ScriptString, 388)()); }
			UObject.Pointer ResourceData() { mixin(MGPC!(UObject.Pointer, 372)()); }
			int ResourceSize() { mixin(MGPC!(int, 368)()); }
			int ResourceID() { mixin(MGPC!(int, 364)()); }
			UObject.UntypedBulkData_Mirror CompressedPS3Data() { mixin(MGPC!(UObject.UntypedBulkData_Mirror, 312)()); }
			UObject.UntypedBulkData_Mirror CompressedXbox360Data() { mixin(MGPC!(UObject.UntypedBulkData_Mirror, 260)()); }
			UObject.UntypedBulkData_Mirror CompressedPCData() { mixin(MGPC!(UObject.UntypedBulkData_Mirror, 208)()); }
			int RawPCMDataSize() { mixin(MGPC!(int, 204)()); }
			UObject.Pointer RawPCMData() { mixin(MGPC!(UObject.Pointer, 200)()); }
			UObject.Pointer VorbisDecompressor() { mixin(MGPC!(UObject.Pointer, 196)()); }
			UObject.UntypedBulkData_Mirror RawData() { mixin(MGPC!(UObject.UntypedBulkData_Mirror, 144)()); }
			int SampleRate() { mixin(MGPC!(int, 116)()); }
			int NumChannels() { mixin(MGPC!(int, 112)()); }
			float Duration() { mixin(MGPC!(float, 108)()); }
			float Pitch() { mixin(MGPC!(float, 104)()); }
			// WARNING: Property 'Volume' has the same name as a defined type!
			ScriptString SpokenText() { mixin(MGPC!(ScriptString, 88)()); }
			SoundNodeWave.EDecompressionType DecompressionType() { mixin(MGPC!(SoundNodeWave.EDecompressionType, 85)()); }
			AudioDevice.ETTSSpeaker TTSSpeaker() { mixin(MGPC!(AudioDevice.ETTSSpeaker, 84)()); }
			int CompressionQuality() { mixin(MGPC!(int, 76)()); }
		}
		bool bManualWordWrap() { mixin(MGBPC!(80, 0x40)()); }
		bool bManualWordWrap(bool val) { mixin(MSBPC!(80, 0x40)()); }
		bool bMature() { mixin(MGBPC!(80, 0x20)()); }
		bool bMature(bool val) { mixin(MSBPC!(80, 0x20)()); }
		bool bProcedural() { mixin(MGBPC!(80, 0x10)()); }
		bool bProcedural(bool val) { mixin(MSBPC!(80, 0x10)()); }
		bool bUseTTS() { mixin(MGBPC!(80, 0x8)()); }
		bool bUseTTS(bool val) { mixin(MSBPC!(80, 0x8)()); }
		bool bDynamicResource() { mixin(MGBPC!(80, 0x4)()); }
		bool bDynamicResource(bool val) { mixin(MSBPC!(80, 0x4)()); }
		bool bLoopingSound() { mixin(MGBPC!(80, 0x2)()); }
		bool bLoopingSound(bool val) { mixin(MSBPC!(80, 0x2)()); }
		bool bForceRealTimeDecompression() { mixin(MGBPC!(80, 0x1)()); }
		bool bForceRealTimeDecompression(bool val) { mixin(MSBPC!(80, 0x1)()); }
	}
	final void GeneratePCMData(ref ScriptArray!(ubyte) Buffer, int SamplesNeeded)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = Buffer;
		*cast(int*)&params[12] = SamplesNeeded;
		(cast(ScriptObject)this).ProcessEvent(Functions.GeneratePCMData, params.ptr, cast(void*)0);
		*Buffer = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
}
