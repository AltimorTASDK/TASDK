module UnrealScript.Engine.SoundMode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Core.UObject;

extern(C++) interface SoundMode : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundMode")()); }
	private static __gshared SoundMode mDefaultProperties;
	@property final static SoundMode DefaultProperties() { mixin(MGDPC!(SoundMode, "SoundMode Engine.Default__SoundMode")()); }
	struct SoundClassAdjuster
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SoundMode.SoundClassAdjuster")()); }
		@property final
		{
			auto ref
			{
				float VoiceCenterChannelVolumeAdjuster() { mixin(MGPS!(float, 24)()); }
				float PitchAdjuster() { mixin(MGPS!(float, 16)()); }
				float VolumeAdjuster() { mixin(MGPS!(float, 12)()); }
				// WARNING: Property 'SoundClass' has the same name as a defined type!
				AudioDevice.ESoundClassName SoundClassName() { mixin(MGPS!(AudioDevice.ESoundClassName, 0)()); }
			}
			bool bApplyToChildren() { mixin(MGBPS!(20, 0x1)()); }
			bool bApplyToChildren(bool val) { mixin(MSBPS!(20, 0x1)()); }
		}
	}
	struct AudioEQEffect
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SoundMode.AudioEQEffect")()); }
		@property final auto ref
		{
			float LFGain() { mixin(MGPS!(float, 32)()); }
			float LFFrequency() { mixin(MGPS!(float, 28)()); }
			float MFGain() { mixin(MGPS!(float, 24)()); }
			float MFBandwidth() { mixin(MGPS!(float, 20)()); }
			float MFCutoffFrequency() { mixin(MGPS!(float, 16)()); }
			float HFGain() { mixin(MGPS!(float, 12)()); }
			float HFFrequency() { mixin(MGPS!(float, 8)()); }
			UObject.Double RootTime() { mixin(MGPS!(UObject.Double, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SoundMode.SoundClassAdjuster) SoundClassEffects() { mixin(MGPC!(ScriptArray!(SoundMode.SoundClassAdjuster), 100)()); }
			float FadeOutTime() { mixin(MGPC!(float, 124)()); }
			float Duration() { mixin(MGPC!(float, 120)()); }
			float FadeInTime() { mixin(MGPC!(float, 116)()); }
			float InitialDelay() { mixin(MGPC!(float, 112)()); }
			SoundMode.AudioEQEffect EQSettings() { mixin(MGPC!(SoundMode.AudioEQEffect, 64)()); }
		}
		bool bApplyEQ() { mixin(MGBPC!(60, 0x1)()); }
		bool bApplyEQ(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
}
