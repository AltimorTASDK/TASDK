module UnrealScript.Engine.SoundNodeAmbient;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.SoundNodeAttenuation;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface SoundNodeAmbient : SoundNode
{
public extern(D):
	struct AmbientSoundSlot
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			float Weight() { return *cast(float*)(cast(size_t)&this + 12); }
			float VolumeScale() { return *cast(float*)(cast(size_t)&this + 8); }
			float PitchScale() { return *cast(float*)(cast(size_t)&this + 4); }
			SoundNodeWave Wave() { return *cast(SoundNodeWave*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SoundNodeAmbient.AmbientSoundSlot) SoundSlots() { return *cast(ScriptArray!(SoundNodeAmbient.AmbientSoundSlot)*)(cast(size_t)cast(void*)this + 120); }
			DistributionFloat.RawDistributionFloat VolumeModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 276); }
			DistributionFloat.RawDistributionFloat PitchModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 248); }
			DistributionFloat.RawDistributionFloat LPFMaxRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 220); }
			DistributionFloat.RawDistributionFloat LPFMinRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 192); }
			DistributionFloat.RawDistributionFloat MaxRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 164); }
			DistributionFloat.RawDistributionFloat MinRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 136); }
			SoundNodeWave Wave() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 132); }
			float VolumeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float VolumeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float PitchMax() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float PitchMin() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float LPFRadiusMax() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float LPFRadiusMin() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float RadiusMax() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float RadiusMin() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			SoundNodeAttenuation.SoundDistanceModel DistanceModel() { return *cast(SoundNodeAttenuation.SoundDistanceModel*)(cast(size_t)cast(void*)this + 84); }
			float dBAttenuationAtMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bAttenuateWithLowPassFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
		bool bAttenuateWithLowPassFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
		bool bAttenuateWithLPF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
		bool bAttenuateWithLPF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
		bool bSpatialize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bSpatialize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bAttenuate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bAttenuate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
}
