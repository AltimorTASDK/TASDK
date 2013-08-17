module UnrealScript.Engine.ForceFeedbackWaveform;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ForceFeedbackWaveform : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ForceFeedbackWaveform")); }
	private static __gshared ForceFeedbackWaveform mDefaultProperties;
	@property final static ForceFeedbackWaveform DefaultProperties() { mixin(MGDPC("ForceFeedbackWaveform", "ForceFeedbackWaveform Engine.Default__ForceFeedbackWaveform")); }
	enum EWaveformFunction : ubyte
	{
		WF_Constant = 0,
		WF_LinearIncreasing = 1,
		WF_LinearDecreasing = 2,
		WF_Sin0to90 = 3,
		WF_Sin90to180 = 4,
		WF_Sin0to180 = 5,
		WF_Noise = 6,
		WF_MAX = 7,
	}
	struct WaveformSample
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ForceFeedbackWaveform.WaveformSample")); }
		@property final auto ref
		{
			float Duration() { mixin(MGPS("float", 4)); }
			ForceFeedbackWaveform.EWaveformFunction RightFunction() { mixin(MGPS("ForceFeedbackWaveform.EWaveformFunction", 3)); }
			ForceFeedbackWaveform.EWaveformFunction LeftFunction() { mixin(MGPS("ForceFeedbackWaveform.EWaveformFunction", 2)); }
			ubyte RightAmplitude() { mixin(MGPS("ubyte", 1)); }
			ubyte LeftAmplitude() { mixin(MGPS("ubyte", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ForceFeedbackWaveform.WaveformSample) Samples() { mixin(MGPC("ScriptArray!(ForceFeedbackWaveform.WaveformSample)", 64)); }
			float MaxWaveformDistance() { mixin(MGPC("float", 80)); }
			float WaveformFalloffStartDistance() { mixin(MGPC("float", 76)); }
		}
		bool bIsLooping() { mixin(MGBPC(60, 0x1)); }
		bool bIsLooping(bool val) { mixin(MSBPC(60, 0x1)); }
	}
}
