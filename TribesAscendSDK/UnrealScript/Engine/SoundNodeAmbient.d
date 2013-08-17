module UnrealScript.Engine.SoundNodeAmbient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.SoundNodeAttenuation;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface SoundNodeAmbient : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeAmbient")()); }
	private static __gshared SoundNodeAmbient mDefaultProperties;
	@property final static SoundNodeAmbient DefaultProperties() { mixin(MGDPC!(SoundNodeAmbient, "SoundNodeAmbient Engine.Default__SoundNodeAmbient")()); }
	struct AmbientSoundSlot
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SoundNodeAmbient.AmbientSoundSlot")()); }
		@property final auto ref
		{
			float Weight() { mixin(MGPS!(float, 12)()); }
			float VolumeScale() { mixin(MGPS!(float, 8)()); }
			float PitchScale() { mixin(MGPS!(float, 4)()); }
			SoundNodeWave Wave() { mixin(MGPS!(SoundNodeWave, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SoundNodeAmbient.AmbientSoundSlot) SoundSlots() { mixin(MGPC!(ScriptArray!(SoundNodeAmbient.AmbientSoundSlot), 120)()); }
			DistributionFloat.RawDistributionFloat VolumeModulation() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 276)()); }
			DistributionFloat.RawDistributionFloat PitchModulation() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 248)()); }
			DistributionFloat.RawDistributionFloat LPFMaxRadius() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 220)()); }
			DistributionFloat.RawDistributionFloat LPFMinRadius() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 192)()); }
			DistributionFloat.RawDistributionFloat MaxRadius() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 164)()); }
			DistributionFloat.RawDistributionFloat MinRadius() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 136)()); }
			SoundNodeWave Wave() { mixin(MGPC!(SoundNodeWave, 132)()); }
			float VolumeMax() { mixin(MGPC!(float, 116)()); }
			float VolumeMin() { mixin(MGPC!(float, 112)()); }
			float PitchMax() { mixin(MGPC!(float, 108)()); }
			float PitchMin() { mixin(MGPC!(float, 104)()); }
			float LPFRadiusMax() { mixin(MGPC!(float, 100)()); }
			float LPFRadiusMin() { mixin(MGPC!(float, 96)()); }
			float RadiusMax() { mixin(MGPC!(float, 92)()); }
			float RadiusMin() { mixin(MGPC!(float, 88)()); }
			SoundNodeAttenuation.SoundDistanceModel DistanceModel() { mixin(MGPC!(SoundNodeAttenuation.SoundDistanceModel, 84)()); }
			float dBAttenuationAtMax() { mixin(MGPC!(float, 80)()); }
		}
		bool bAttenuateWithLowPassFilter() { mixin(MGBPC!(76, 0x8)()); }
		bool bAttenuateWithLowPassFilter(bool val) { mixin(MSBPC!(76, 0x8)()); }
		bool bAttenuateWithLPF() { mixin(MGBPC!(76, 0x4)()); }
		bool bAttenuateWithLPF(bool val) { mixin(MSBPC!(76, 0x4)()); }
		bool bSpatialize() { mixin(MGBPC!(76, 0x2)()); }
		bool bSpatialize(bool val) { mixin(MSBPC!(76, 0x2)()); }
		bool bAttenuate() { mixin(MGBPC!(76, 0x1)()); }
		bool bAttenuate(bool val) { mixin(MSBPC!(76, 0x1)()); }
	}
}
